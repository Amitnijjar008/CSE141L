// testbench for FIFO
module fifo_tb;

    // TODO: clean up

    parameter width_p = 27,          // word width in bits
            lg_depth_p = 2;    	 // array address width

    integer NUM_TESTS = 7;

    logic                   clk;
    logic [width_p - 1:0]   d_i;    // incoming data
    logic                   enque_i,
                            deque_i;
    logic                   clear_i = 1;
    logic [width_p - 1:0]   d_o;	 // emerging data
    logic                   empty_o,
                            full_o,
                            valid_o,
                            error_r;

    integer sim_pass = 0;

    fifo #(
            .width_p(width_p),
            .lg_depth_p(lg_depth_p)
        )
        dut (
            .clk(clk),
            .d_i(d_i),
            .enque_i(enque_i),
            .deque_i(deque_i),
            .clear_i(clear_i),
            .d_o(d_o),
            .empty_o(empty_o),
            .full_o(full_o),
            .valid_o(valid_o)
        );               // each port has same name in & out

    // Clock generator
    always
        begin
        #5ns clk = 1;
        #5ns clk = 0;
    end

    initial
        begin
        enque_i = 0;
        deque_i = 0;
        #10ns  clear_i = 0;

        // Enqueue elements to FIFO.
        @(negedge clk);
        enque_i = 1;
        d_i = 0;
        @(negedge clk);
        enque_i = 1;
        d_i = 1;
        @(negedge clk);
        enque_i = 1;
        d_i = 2;

        // Stop added elements, and check that FIFO is now full, and not empty.
        @(negedge clk);
        enque_i = 0;
        sim_pass = sim_pass + (full_o == 1'b1);
        sim_pass = sim_pass + (empty_o == 1'b0);

        // Dequeue elements and check that the values are correct.
        @(negedge clk);
        deque_i = 1;
        sim_pass = sim_pass + (d_o == 0);
        @(negedge clk);
        deque_i = 1;
        sim_pass = sim_pass + (d_o == 1);
        @(negedge clk);
        deque_i = 1;
        sim_pass = sim_pass + (d_o == 2);

        // Check that FIFO is now empty.
        @(negedge clk);
        sim_pass = sim_pass + (full_o == 1'b0);
        sim_pass = sim_pass + (empty_o == 1'b1);
        deque_i = 0;

        if (sim_pass !== NUM_TESTS)
            begin
            $display("Test failed!");
            end
        else
            begin
            $display("All tests passed!");
        end
        $stop;
    end

endmodule
