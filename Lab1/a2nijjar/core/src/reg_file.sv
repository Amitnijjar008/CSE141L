// A register file with asynchronous read and synchronous write
module reg_file  #(
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

    logic [data_width_p-1:0] RF [0:2**addr_width_p-1];

    assign rs_val_o = RF [rs_addr_i];
    assign rd_val_o = RF [rd_addr_i];

    always_ff @ (posedge clk)
        begin
        if (wen_i)
            begin
            RF [w_addr_i] <= w_data_i;
        end     
    end
endmodule
