//
// CSE141L Lab
// University of California, San Diego
//
// parameters:
// 	width_p:    width of data coming in and out
//      lg_depth_p: lg (number of elements+1)
//
// note: one element goes unused; so lg_depth_p=3 means 7 elements
// lg_depth_p=2 means 3 elements, etc.

module fifo #(
        parameter width_p = 27, 
        parameter lg_depth_p = 2
    )
    (
        input clk,
        input [width_p - 1:0] d_i,
        input enque_i, 
        input deque_i,	
        input clear_i,
        output [width_p - 1:0] d_o,
        output empty_o,
        output full_o,
        output valid_o
    );

    // Storage for the FIFO.
    logic [width_p - 1:0] storage [(2**lg_depth_p)-1:0];

    // One read pointer, one write pointer.
    logic [lg_depth_p-1:0] rptr_r, wptr_r;

    logic error_r; // lights up if the fifo was used incorrectly

    assign full_o = ((wptr_r + 1'b1) == rptr_r);
    assign empty_o = (wptr_r == rptr_r);
    assign valid_o = !empty_o;

    assign d_o = storage[rptr_r];

    always_ff @(posedge clk)
        begin
        if (enque_i)
            begin
            storage[wptr_r] <= d_i;
        end
    end 

    // TODO: Desugar this always_ff block.
    always_ff @(posedge clk)
        begin
        if (clear_i)
            begin
            rptr_r <= 0;
            wptr_r <= 0;
            error_r <= 1'b0;
            end
        else
            begin
            rptr_r <= rptr_r + deque_i;
            wptr_r <= wptr_r + enque_i;
            
            // synthesis translate off
            if (full_o & enque_i)
                begin
                $display("error: wrote full fifo");
            end
            
            if (empty_o & deque_i)
                begin
                $display("error: deque empty fifo");			
            end
            // synthesis translate on				
            
            error_r  <= error_r | (full_o & enque_i) | (empty_o & deque_i);
        end 
    end

endmodule
