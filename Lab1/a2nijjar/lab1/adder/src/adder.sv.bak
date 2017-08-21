/*
 * CSE141L Lab1: Tools of the Trade
 * University of California, San Diego
 * 
 */

module adder #(
        parameter W = 8
    )
    (
        input clk,
        input [W-1:0] a_i, b_i,
        output logic [W:0] sum_o,
        output logic is_odd_o
    );

    logic [W-1:0] a_r, b_r;
    logic [W:0]  sum_next;
    
    // Calculate the sum of a and b (combinational logic).
    assign sum_next = a_r + b_r;

    always_ff @(posedge clk) //enable SystemVerilog to make always_ff work!
        begin
        // Pass inputs a and b through flip-flops (registers).
        a_r <= a_i;
        b_r <= b_i;
        
        // Pass sum through registers.
        sum_o <= sum_next;
        
        is_odd_o <= sum_o[0];
    end

endmodule
 