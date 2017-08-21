// A simple register file wrapper

// TODO: test me in Quartus
module reg_file_wrap #(
        parameter addr_width_p = 6,
        parameter data_width_p = 32
    )
    (
        input clk,
        input [addr_width_p-1:0] rs_addr_i,
        input [addr_width_p-1:0] rd_addr_i,
        input [addr_width_p-1:0] w_addr_i,
        input wen_i,
        input [data_width_p-1:0] w_data_i,
        output logic [data_width_p-1:0] rs_val_o,
        output logic [data_width_p-1:0] rd_val_o
    );

    logic [addr_width_p-1:0] rs_addr_r;
    logic [addr_width_p-1:0] rd_addr_r;
    logic [addr_width_p-1:0] w_addr_r;
    logic wen_r;
    logic [data_width_p-1:0] w_data_r;
    logic [data_width_p-1:0] rs_val;
    logic [data_width_p-1:0] rd_val;
    
    reg_file #(
            .addr_width_p(addr_width_p),
            .data_width_p(data_width_p)
        )
        rf (
            .clk(clk),
            .rs_addr_i(rs_addr_r),
            .rd_addr_i(rd_addr_r),
            .w_addr_i(w_addr_r),
            .wen_i(wen_r),
            .w_data_i(w_data_r),
            .rs_val_o(rs_val),
            .rd_val_o(rd_val)
        );

    always_ff @(posedge clk)
        begin
        wen_r       <= wen_i;
        rs_addr_r   <= rs_addr_i;
        rd_addr_r   <= rd_addr_i;
        w_addr_r    <= w_addr_i;
        w_data_r    <= w_data_i;
        rs_val_o    <= rs_val;
        rd_val_o    <= rd_val;
    end

endmodule // reg_file_wrap
