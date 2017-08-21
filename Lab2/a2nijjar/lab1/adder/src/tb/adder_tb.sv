`timescale 1ns / 1ps

/*
 * CSE141L Lab1: Tools of the Trade
 * University of California, San Diego
 *
 */

//
// NOTE: This verilog is non-synthesizable.
// You can only use constructs like "initial", "#10", "forever"
// inside your test bench! Do not use it in your actual design.
//

module adder_tb #(parameter W = 8);

    integer NUM_TESTS = 6;
    logic         clk;
    logic [W-1:0] a_r;
    logic [W-1:0] b_r;
    logic [W:0] sum;
    logic        is_odd;
    integer sim_pass = 0;

    // The design under test is our adder
    adder #(
            .W(W)
        )
        dut (
            .clk(clk),
            .a_i(a_r),
            .b_i(b_r),
            .sum_o(sum),
            .is_odd_o(is_odd)
        );

    // Toggle the clock every 10 ns
    initial
        begin
        clk = 0;
        forever #10 clk = !clk;
    end

    // Test with a variety of inputs.
    // Introduce new stimulus on the falling clock edge so that values
    // will be on the input wires in plenty of time to be read by
    // registers on the subsequent rising clock edge.
    initial
        begin
        a_r = 0;
        b_r = 0;
        @(negedge clk);
        a_r = 1;
        b_r = 1;
        @(negedge clk);
        a_r = 5;
        b_r = 6;
        @(negedge clk);
        a_r = 2;
        b_r = 2;
        @(negedge clk);
        a_r = 3;
        b_r = 3;
        @(negedge clk);
        a_r = 1;
        b_r = 8;
    end // initial begin

    // Check outputs.
    initial
        begin
        // Wait until output is valid.
        wait (is_odd !== 1'bx && sum[0] !== 1'bx);

        @(negedge clk);
        sim_pass = sim_pass + (sum == 0 && is_odd == 0);
        @(negedge clk);
        sim_pass = sim_pass + (sum == 2 && is_odd == 0);
        @(negedge clk);
        sim_pass = sim_pass + (sum == 11 && is_odd == 1);
        @(negedge clk);
        sim_pass = sim_pass + (sum == 4 && is_odd == 0);
        @(negedge clk);
        sim_pass = sim_pass + (sum == 6 && is_odd == 0);
        @(negedge clk);
        sim_pass = sim_pass + (sum == 9 && is_odd == 1);

        if (sim_pass !== NUM_TESTS)
            begin
            $display("Test failed!");
            end
        else
            begin
            $display("All tests passed!");
        end
        $stop;
    end // initial begin

endmodule // test_adder
