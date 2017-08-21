// Bitcoin Mining Testbench
import definitions::*;

// Comment out this line to remove disassembly support
// You will need to do this when you run a gate-level i.e. timing simulation in ModelSim

//`define DISASSEMBLE

`define half_period 0.5
`timescale 1 ns / 1 ps

// TODO: Edit the file names below to match your Assembler output files.
// read from assembled files and store in buffers
`define hex_i_file "miner_i.hex"
`define hex_r_file "miner_r.hex"
`define hex_d_file "miner_d.hex"

module miner_tb();

    logic clk, n_reset, n_reset_r;
    int i;

    // 5 is the op-code size
    localparam instr_length_p = rd_size_gp + rs_imm_size_gp + 5;
    localparam instr_buffer_size_p = 1024;
    localparam data_buffer_size_p = 1024;
    localparam reg_packet_width_p = 40;

    reg [instr_length_p-1:0] ins_packet [instr_buffer_size_p-1:0];
    reg [31:0] data_packet [data_buffer_size_p-1:0];
    reg [reg_packet_width_p-1:0] reg_packet [(2**rs_imm_size_gp)-1:0];

    instruction_s instruct_t;

    // Data memory connected to core
    mem_in_s mem_in2,mem_in1, mem_in;
    logic [$bits(mem_in_s)-1:0] mem_in1_flat, mem_in_flat;
    assign mem_in1 = mem_in1_flat;
    assign mem_in_flat = mem_in;

    mem_out_s mem_out;
    logic [$bits(mem_out_s)-1:0] mem_out_flat;
    assign mem_out = mem_out_flat;
    logic select;
    logic [31:0] data_mem_addr,data_mem_addr1,data_mem_addr2;
    data_mem datamem_1 (
        .clk(clk),
        .n_reset(n_reset_r),
        .port_flat_i(mem_in_flat),
        .addr(data_mem_addr),
        .port_flat_o(mem_out_flat)
    );

    // Main core
    net_packet_s core_in, core_out, packet;
    logic [$bits(net_packet_s)-1:0] core_in_flat, core_out_flat;
    assign core_in_flat = core_in;
    assign core_out = core_out_flat;

    logic [mask_length_gp-1:0] barrier_OR;
    debug_s debug;
    logic exception;

    int cycle_counter_r;
    int instruction_count = 0;

    logic sim_pass = 0;

    const int ALU_TRACE = 0;
    const int REG_TRACE = 0;
    integer alu_trace_file, reg_trace_file, counts_file;

    initial
        begin
        alu_trace_file = $fopen("alu_trace.txt"); // opening the file
        reg_trace_file = $fopen("reg_trace.txt"); // opening the file
        counts_file = $fopen("counts.txt"); // opening the file
    end

    core_flattened dut (
        .clk(clk),
        .n_reset(n_reset_r),
        .net_packet_flat_i(core_in_flat),
        .net_packet_flat_o(core_out_flat),
        .from_mem_flat_i(mem_out_flat),
        .to_mem_flat_o(mem_in1_flat),
        .barrier_o(barrier_OR),
        .exception_o(exception),
        .debug_flat_o(debug),
        .data_mem_addr(data_mem_addr1)
    );

    // To select between core or test bench data and address for the data memory
    assign mem_in        = select ? mem_in1        : mem_in2;
    assign data_mem_addr = select ? data_mem_addr1 : data_mem_addr2;
    // ----------------------------------------------------------------

    // this version of readmemh checks for errors
    `define assert_readmemh(fileName, destination)                          \
        do                                                               \
            begin                                                          \
                automatic integer fileid = $fopen(fileName,"r");            \
                if (fileid == 0)                                           \
                    begin                                                   \
                    $display("\n#######\n####### ");                      \
                    $display("Can't open file %s", fileName);             \
                    $display("#######\n#######\n ");                      \
                    $stop;                                                \
                    end                                                     \
                else                                                       \
                    begin                                                    \
                    $fclose(fileid);                                      \
                    $readmemh(fileName, destination);                     \
                    if (destination[0] === 'x)                            \
                        begin                                               \
                        $display("\nFilename %s read X's; stopping.\n", fileName); \
                            $stop;                                         \
                    end                                                 \
                end                                                      \
            end while (0)

    typedef enum logic [2:0] {
        IDLE,
        LDWORK,
        LDNONCE,
        DONE
        } command_state_e;

    //BTC work
    int work2 [3];
    int midstate [8];
    logic [32:0] nonce;

    initial begin

        command_state_e command;
        `assert_readmemh (`hex_i_file, ins_packet);
        `assert_readmemh (`hex_d_file, data_packet);
        `assert_readmemh (`hex_r_file, reg_packet);

        // The signals are initialized and the core is reset
        packet  = 0;
        n_reset = 1'b1;
        clk     = 1'b0;

        n_reset = 1'b0;
        @ (negedge clk)
        @ (negedge clk)
        n_reset = 1'b1;

        // Initialize the data memory, by sending each data as a store
        select = 1'b0;
        mem_in2.valid = 1'b1;
        mem_in2.yumi  = 1'b1;
        mem_in2.byte_not_word = 1'b0;
        mem_in2.wen = 1'b1;
        for (i = 0; i < data_buffer_size_p; i = i + 1)
            begin
            @ (negedge clk)
            @ (negedge clk)
            data_mem_addr2 = i * 4;
            mem_in2.write_data = data_packet[i];
        end

        @ (negedge clk)
        mem_in2.valid = 1'b0;
        mem_in2.yumi  = 1'b0;
        @ (negedge clk)

        // Connect the core to the memory
        select = 1'b1;

        // Insert instructions: Read from the buffers
        // and send the instructions as packets to the core
        for (i = 0; i < instr_buffer_size_p; i = i + 1)
            begin
            instruct_t = '{
                opcode: ins_packet[i][15:11],
                rd:     ins_packet[i][10:6],
                rs_imm: ins_packet[i][5:0]
            };

            @ (negedge clk)
            packet = '{
                ID:       10'b0000000001,
                net_op:   INSTR,
                reserved: 5'b0,
                net_data: {{(16){1'b0}},{instruct_t}},
                net_addr: i
            };
        end

        // Insert register values: Read from the buffers
        // and send the register values as packets to the core
        for (i = 0; i < (2**rs_imm_size_gp); i = i + 1)
            begin
            @ (negedge clk)
            packet = '{
                ID:       10'b0000000001,
                net_op:   REG,
                reserved: 5'b0,
                net_data: reg_packet[i][31:0],
                net_addr: reg_packet[i][37:32]
            };
        end

        $display("[*] Finished Initializing Core and Memory");
        // Initialize the Barrier mask to 111
        @ (negedge clk)
        packet = '{
            ID:       10'b0000000001,
            net_op:   BAR,
            reserved: 5'b0,
            net_data: 32'd7,
            net_addr: 10'd24
        };

        // Sending the bitcoin miner work and midstate
        midstate = {32'h56f6950a, 32'h86a3a529, 32'h7961969c, 32'h7bfdb28c, 32'h54c9af5a, 32'h951237b8, 32'h7979d96f, 32'hc01823e1};
        work2 = {32'ha24c2683, 32'hcf1beb52, 32'h2cf50119};

        for (i = 1; i < 10; i = i + 1)
            begin
            @ (negedge clk)
            packet = '{
                ID:       10'b0000000001,
                net_op:   REG,
                reserved: 5'b0,
                net_data: midstate[i - 1],
                net_addr: i
            };
        end

        for (i = 0; i < 3; i = i + 1) begin
            @ (negedge clk)
            packet = '{
                ID:       10'b0000000001,
                net_op:   REG,
                reserved: 5'b0,
                net_data: work2[i],
                net_addr: i + 9
            };
        end

        // Send COMMAND 1
        command = LDWORK;

        @ (negedge clk)
        packet = '{
            ID:       10'b0000000001,
            net_op:   REG,
            reserved: 5'b0,
            net_data: 32'd1,
            net_addr: 10'd20
        };

        // Set the PC to zero ; Set Barrier Bits to 010
        @ (negedge clk)
        packet = '{
            ID:       10'b0000000001,
            net_op:   PC,
            reserved: 5'b0,
            net_data: 32'h2,
            net_addr: 10'd0
        };

        // No more network interfere
        @ (negedge clk)
        packet = '{
            ID:       10'b0000000001,
            net_op:   NULL,
            reserved: 5'b0,
            net_data: 32'hFFFFFFFE,
            net_addr: 10'd24
        };

        $display ("-------- START MINING ---------");
        nonce = 0;
        while (1) begin
            // Set initial nonce to 0
            @ (negedge clk)
            if (barrier_OR == 3'b000)
                begin
                if (command == LDWORK)
                    begin
                    $display("[*] Finished loading Block Header and Midstate");
                    $display("[*] Initializing Miner with Nonce = 0x%h", nonce);
                    @ (negedge clk)
                    @ (negedge clk)
                    command = LDNONCE;
                    packet = '{
                        ID:       10'b0000000001,
                        net_op:   REG,
                        reserved: 5'b0,
                        net_data: nonce,
                        net_addr: 10'd1
                    };

                    @ (negedge clk)
                    packet = '{
                        ID:       10'b0000000001,
                        net_op:   REG,
                        reserved: 5'b0,
                        net_data: 32'd2,
                        net_addr: 10'd20
                    };

                    @ (negedge clk)
                    packet = '{
                        ID:       10'b0000000001,
                        net_op:   PC,
                        reserved: 5'b0,
                        net_data: 32'h2,
                        net_addr: 10'd0
                    };

                    // No more network interfere
                    @ (negedge clk)
                    packet = '{
                        ID:       10'b0000000001,
                        net_op:   NULL,
                        reserved: 5'b0,
                        net_data: 32'hFFFFFFFE,
                        net_addr: 10'd24
                    };
                    end
                else if (command == LDNONCE)
                    begin
                    nonce = nonce + 1;
                    $display("[*] Trying a new Nonce = 0x%h", nonce);
                    @ (negedge clk)
                    @ (negedge clk)
                    command = LDNONCE;
                    packet = '{
                        ID:       10'b0000000001,
                        net_op:   REG,
                        reserved: 5'b0,
                        net_data: nonce,
                        net_addr: 10'd1
                    };

                    @ (negedge clk)
                    packet = '{
                        ID:       10'b0000000001,
                        net_op:   REG,
                        reserved: 5'b0,
                        net_data: 32'd2,
                        net_addr: 10'd20
                    };

                    @ (negedge clk)
                    packet = '{
                        ID:       10'b0000000001,
                        net_op:   PC,
                        reserved: 5'b0,
                        net_data: 32'h2,
                        net_addr:  10'd0
                    };

                    // No more network interfere
                    @ (negedge clk)
                    packet = '{
                        ID:       10'b0000000001,
                        net_op:   NULL,
                        reserved: 5'b0,
                        net_data: 32'hFFFFFFFE,
                        net_addr: 10'd24
                    };
                end
                end
            else if (barrier_OR == 3'b001)
                begin
                @ (negedge clk)
                @ (negedge clk)
                command = DONE;
                if (nonce === 8)
                    begin
                    sim_pass = 1;
                    $display("[*] BTC found on correct nonce! Test passed!");
                    end
                else
                    begin
                    sim_pass = 0;
                    $display("[*] BTC found on incorrect nonce! Test failed!");
                end

                packet = '{
                    ID:       10'b0000000001,
                    net_op:   REG,
                    reserved: 5'b0,
                    net_data: 32'd3,
                    net_addr: 10'd20
                };

                @ (negedge clk)
                packet = '{
                    ID:       10'b0000000001,
                    net_op:   PC,
                    reserved: 5'b0,
                    net_data: 32'h2,
                    net_addr: 10'd0
                };

                // No more network interfere
                @ (negedge clk)
                packet = '{
                    ID:       10'b0000000001,
                    net_op:   NULL,
                    reserved: 5'b0,
                    net_data: 32'hFFFFFFFE,
                    net_addr: 10'd24
                };
            end
        end
    end // initial

    `ifdef DISASSEMBLE
    `include "disassemble.v"
    `endif

    // Clock generator
    always
        begin
        // Toggle clock every 1 ticks
        #`half_period clk = ~clk;
    end

    logic pass_fail_code_done;
    logic stop_simulator;

    always @ (negedge clk)
    begin
        pass_fail_code_done = 1;
        stop_simulator = 0;

        if (mem_out.valid === 1)
            begin
            unique case (data_mem_addr1)
                32'hDEAD_DEAD:
                    begin
                    $write("FAIL");
                    stop_simulator = 1;
                end

                32'h600D_BEEF:
                    begin
                    $write("DONE");
                    stop_simulator = 1;
                end

                32'hC0DE_C0DE:
                    begin
                    $write("CODE");
                end

                32'hC0FF_EEEE:
                    begin
                    $write("PASS");
                end

                default:
                    begin
                    pass_fail_code_done = 0;
                end
            endcase // unique case (data_mem_addr1)

            if (pass_fail_code_done == 1)
                begin
                $display(": 0x%8.8x %10.10d (CYCLE 0x%x %10d)",
                    mem_in.write_data,
                    mem_in.write_data,
                    cycle_counter_r,
                    cycle_counter_r
                );
            end

            if (stop_simulator)
                begin
                $display("Cycle Count: %d", cycle_counter_r);
                $fdisplay(counts_file, "%d", cycle_counter_r);
                $display("Instruction Count: %d", instruction_count);
                $fdisplay(counts_file, "%d", instruction_count);
                $fclose(alu_trace_file);
                $fclose(reg_trace_file);
                $fclose(counts_file);
                $stop;
            end
        end // if (mem_out.valid)
    end

    // The packets become available to the core at positive edge of the clock, to be synchronous
    always_ff @ (posedge clk)
        begin
        n_reset_r <= n_reset;
        core_in <= packet;
    end

    //network_packet_s_logger \
    //    #(
    //        .verbosity_p(0)
    //    )
    //    np_log (
    //        .clk(clk)
    //        .n_reset(n_reset),
    //        .net_packet_i(core_in),
    //        .cycle_counter_i(cycle_counter_r),
    //        .barrier_OR_i(barrier_OR),
    //    );

    // Incrememnt the instruction count each time PC changes.
    //always @ (dut.core1.PC_r)
    //    begin
    //    instruction_count++;
    //end

    always_ff @ (posedge clk)
        begin

        if (!n_reset)
            begin
            cycle_counter_r <= 0;
            instruction_count <= 0;
            end
        else
            begin

            // If not in reset, always increment cycle count.
            cycle_counter_r <= cycle_counter_r + 1;

            // NOTE: check instructions at ALU, since if it got this far, it will not be squashed (except for barrier).
            if (dut.core1.stall || (dut.core1.alu_1.op_i ==? kADDU && dut.core1.alu_1.rd_i == 0 && dut.core1.alu_1.rs_i == 0))
                begin
                // Stall or NOP, do not increment instruction count.
                end
            else
                begin
                instruction_count <= instruction_count + 1;
                if (ALU_TRACE)
                    begin
                    unique casez (dut.core1.alu_1.op_i)
                        kADDU:   $fdisplay(alu_trace_file, "ADDU  R%d(0x%x), R%d(0x%x)", dut.core1.alu_1.op_i.rd , dut.core1.alu_1.rd_i, dut.core1.alu_1.op_i.rs_imm, dut.core1.alu_1.rs_i);
                        kSUBU:   $fdisplay(alu_trace_file, "SUBU  R%d(0x%x), R%d(0x%x)", dut.core1.alu_1.op_i.rd , dut.core1.alu_1.rd_i, dut.core1.alu_1.op_i.rs_imm, dut.core1.alu_1.rs_i);
                        kSLLV:   $fdisplay(alu_trace_file, "SLLV  R%d(0x%x), R%d(0x%x)", dut.core1.alu_1.op_i.rd , dut.core1.alu_1.rd_i, dut.core1.alu_1.op_i.rs_imm, dut.core1.alu_1.rs_i);
                        kSRAV:   $fdisplay(alu_trace_file, "SRAV  R%d(0x%x), R%d(0x%x)", dut.core1.alu_1.op_i.rd , dut.core1.alu_1.rd_i, dut.core1.alu_1.op_i.rs_imm, dut.core1.alu_1.rs_i);
                        kSRLV:   $fdisplay(alu_trace_file, "SRLV  R%d(0x%x), R%d(0x%x)", dut.core1.alu_1.op_i.rd , dut.core1.alu_1.rd_i, dut.core1.alu_1.op_i.rs_imm, dut.core1.alu_1.rs_i);
                        kAND:    $fdisplay(alu_trace_file, "AND   R%d(0x%x), R%d(0x%x)", dut.core1.alu_1.op_i.rd , dut.core1.alu_1.rd_i, dut.core1.alu_1.op_i.rs_imm, dut.core1.alu_1.rs_i);
                        kOR:     $fdisplay(alu_trace_file, "OR    R%d(0x%x), R%d(0x%x)", dut.core1.alu_1.op_i.rd , dut.core1.alu_1.rd_i, dut.core1.alu_1.op_i.rs_imm, dut.core1.alu_1.rs_i);
                        kNOR:    $fdisplay(alu_trace_file, "NOR   R%d(0x%x), R%d(0x%x)", dut.core1.alu_1.op_i.rd , dut.core1.alu_1.rd_i, dut.core1.alu_1.op_i.rs_imm, dut.core1.alu_1.rs_i);
                        kSLT:    $fdisplay(alu_trace_file, "SLT   R%d(0x%x), R%d(0x%x)", dut.core1.alu_1.op_i.rd , dut.core1.alu_1.rd_i, dut.core1.alu_1.op_i.rs_imm, dut.core1.alu_1.rs_i);
                        kSLTU:   $fdisplay(alu_trace_file, "SLTU  R%d(0x%x), R%d(0x%x)", dut.core1.alu_1.op_i.rd , dut.core1.alu_1.rd_i, dut.core1.alu_1.op_i.rs_imm, dut.core1.alu_1.rs_i);
                        kBEQZ:   $fdisplay(alu_trace_file, "BEQZ  R%d(0x%x), R%d(0x%x)", dut.core1.alu_1.op_i.rd , dut.core1.alu_1.rd_i, dut.core1.alu_1.op_i.rs_imm, dut.core1.alu_1.rs_i);
                        kBNEQZ:  $fdisplay(alu_trace_file, "BNEQZ R%d(0x%x), R%d(0x%x)", dut.core1.alu_1.op_i.rd , dut.core1.alu_1.rd_i, dut.core1.alu_1.op_i.rs_imm, dut.core1.alu_1.rs_i);
                        kBGTZ:   $fdisplay(alu_trace_file, "BGTZ  R%d(0x%x), R%d(0x%x)", dut.core1.alu_1.op_i.rd , dut.core1.alu_1.rd_i, dut.core1.alu_1.op_i.rs_imm, dut.core1.alu_1.rs_i);
                        kBLTZ:   $fdisplay(alu_trace_file, "BLTZ  R%d(0x%x), R%d(0x%x)", dut.core1.alu_1.op_i.rd , dut.core1.alu_1.rd_i, dut.core1.alu_1.op_i.rs_imm, dut.core1.alu_1.rs_i);
                        kMOV:    $fdisplay(alu_trace_file, "MOV   R%d(0x%x), R%d(0x%x)", dut.core1.alu_1.op_i.rd , dut.core1.alu_1.rd_i, dut.core1.alu_1.op_i.rs_imm, dut.core1.alu_1.rs_i);
                        kLW:     $fdisplay(alu_trace_file, "LW    R%d(0x%x), R%d(0x%x)", dut.core1.alu_1.op_i.rd , dut.core1.alu_1.rd_i, dut.core1.alu_1.op_i.rs_imm, dut.core1.alu_1.rs_i);
                        kLBU:    $fdisplay(alu_trace_file, "LBU   R%d(0x%x), R%d(0x%x)", dut.core1.alu_1.op_i.rd , dut.core1.alu_1.rd_i, dut.core1.alu_1.op_i.rs_imm, dut.core1.alu_1.rs_i);
                        kJALR:   $fdisplay(alu_trace_file, "JALR  R%d(0x%x), R%d(0x%x)", dut.core1.alu_1.op_i.rd , dut.core1.alu_1.rd_i, dut.core1.alu_1.op_i.rs_imm, dut.core1.alu_1.rs_i);
                        kBAR:    $fdisplay(alu_trace_file, "BAR   R%d(0x%x), R%d(0x%x)", dut.core1.alu_1.op_i.rd , dut.core1.alu_1.rd_i, dut.core1.alu_1.op_i.rs_imm, dut.core1.alu_1.rs_i);
                        kWAIT:   $fdisplay(alu_trace_file, "WAIT  R%d(0x%x), R%d(0x%x)", dut.core1.alu_1.op_i.rd , dut.core1.alu_1.rd_i, dut.core1.alu_1.op_i.rs_imm, dut.core1.alu_1.rs_i);
                        kSW:     $fdisplay(alu_trace_file, "SW    R%d(0x%x), R%d(0x%x)", dut.core1.alu_1.op_i.rd , dut.core1.alu_1.rd_i, dut.core1.alu_1.op_i.rs_imm, dut.core1.alu_1.rs_i);
                        kSB:     $fdisplay(alu_trace_file, "SB    R%d(0x%x), R%d(0x%x)", dut.core1.alu_1.op_i.rd , dut.core1.alu_1.rd_i, dut.core1.alu_1.op_i.rs_imm, dut.core1.alu_1.rs_i);
                        default: $fdisplay(alu_trace_file, "Undefined instruction.");
                    endcase
                end
            end

            if (REG_TRACE)
                begin
                if (dut.core1.rf.wen_i && (!dut.core1.stall || dut.core1.net_reg_write_cmd))
                    begin
                    // TODO: change this for updated register file.
                    $fdisplay(reg_trace_file, "Reg: %d, Data: %d", dut.core1.rf.rd_addr_i, dut.core1.rf.w_data_i);
                end
            end
        end
    end

endmodule
