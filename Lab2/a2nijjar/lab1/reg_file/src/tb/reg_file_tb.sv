module reg_file_tb;

    parameter   num_regs = 8,                       // Number of registers.
                addr_width_p = $clog2(num_regs),    // Log_base_2 (number_of_registers).
                data_width_p = 16;                  // The width of each register.

    logic                    clk;
    logic                    wen = 0;
    logic [addr_width_p-1:0] rs_addr = 0;
    logic [addr_width_p-1:0] rd_addr = 0;
    logic [addr_width_p-1:0] w_addr = 2;
    logic [data_width_p-1:0] w_data = 0;

    wire [data_width_p-1:0]  rs_val;
    wire [data_width_p-1:0]  rd_val;

    reg_file #(
            .addr_width_p(addr_width_p),
            .data_width_p(data_width_p)
        )
        dut (
            .clk(clk),
            .rs_addr_i(rs_addr),
            .rd_addr_i(rd_addr),
            .w_addr_i(w_addr),
            .wen_i(wen),
            .w_data_i(w_data),
            .rs_val_o(rs_val),
            .rd_val_o(rd_val)
        );

    // Clock generator
    always 
        begin
        #5ns clk = 1;
        #5ns clk = 0;
    end

    // TODO: clean up
    initial
        begin
        @(negedge clk);    
        // TODO: add tests here.
        
        #10ns $stop;
    end

endmodule
