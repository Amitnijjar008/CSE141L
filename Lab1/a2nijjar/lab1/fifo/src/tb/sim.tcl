# Load simulation
vsim work.fifo_tb

#                       Group Name          Radix               Signal(s)
add wave    -noupdate   -group {tb}         -radix hexadecimal  /fifo_tb/*
add wave    -noupdate   -group {fifo}       -radix hexadecimal  /fifo_tb/dut/*

# Use short names
configure wave -signalnamewidth 1
