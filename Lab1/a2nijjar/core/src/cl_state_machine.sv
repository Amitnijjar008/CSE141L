import definitions::*;

module cl_state_machine(
        input  instruction_s instruction_i,
        input  state_e       state_i,
        input                exception_i,
        input                net_PC_write_cmd_IDLE_i,
        input                stall_i,
        output state_e       state_o
    );

    // state_n, the next state in state machine
    always_comb
        begin
        // Finish current instruction before exception
        if (!stall_i && exception_i)
            begin
            state_o = ERR;
            end
        else 
            begin
            unique case (state_i)
                // Initial state on reset
                IDLE:
                    begin
                    // Change PC packet 
                    if (net_PC_write_cmd_IDLE_i)
                        begin
                        state_o = RUN;
                        end
                    else
                        begin
                        state_o = IDLE;
                    end
                end
                
                RUN:
                    begin
                    if(instruction_i ==? kWAIT)
                        begin
                        state_o = IDLE;
                        end
                    else
                        begin
                        state_o = RUN;
                    end
                end
                
                default:
                    begin
                    state_o = ERR;
                end
                
            endcase
        end
    end
endmodule
