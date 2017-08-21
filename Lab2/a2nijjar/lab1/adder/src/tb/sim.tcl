# Load simulation
vsim work.adder_tb

#                       Group Name          Radix               Signal(s)
add wave    -noupdate   -group {tb}         -radix hexadecimal  /adder_tb/*
add wave    -noupdate   -group {adder}      -radix hexadecimal  /adder_tb/dut/*

# Use short names
configure wave -signalnamewidth 1
