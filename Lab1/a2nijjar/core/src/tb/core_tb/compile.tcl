# ModelSim 10.4b bug: need to delete library if it already exists because vlib work will
# seg fault otherwise.  
if {[file isdirectory work]} {
    vdel -all -lib work
}

# Create library
vlib work

# Compile .sv files.
vlog -work work "../../definitions.sv"
vlog -work work "../../alu.sv"
vlog -work work "../../cl_decode.sv"
vlog -work work "../../cl_state_machine.sv"
vlog -work work "../../core.sv"
vlog -work work "../../core_flattened.sv"
vlog -work work "../../data_mem.sv"
vlog -work work "../../disassemble.sv"
vlog -work work "../../instr_mem.sv"
vlog -work work "../../net_packet_logger_s.sv"
vlog -work work "../../reg_file.sv"
vlog -work work "core_tb.sv" 
