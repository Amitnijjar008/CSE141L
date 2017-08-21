# Load simulation
vsim work.reg_file_tb

#                       Group Name              Radix               Signal(s)
add wave    -noupdate   -group {tb}             -radix hexadecimal  /reg_file_tb/*
add wave    -noupdate   -group {reg_file}       -radix hexadecimal  /reg_file_tb/dut/*

# Use short names
configure wave -signalnamewidth 1
