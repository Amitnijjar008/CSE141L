# TODO: Fill this out.
if {[file isdirectory work]} {
    vdel -all -lib work
}



vlib work



vlog -work work "../simple_definitions.sv"

vlog -work work "../simple_reg_file.sv"

vlog -work work "../simple_alu.sv"

vlog -work work "../simple_imem.sv"

vlog -work work "../simple_core.sv" 

vlog -work work "simple_core_tb.sv" 
