# TODO: Fill this out.
vsim work.simple_core_tb

add wave    -noupdate   -group {simple_core}               -radix hexadecimal  /simple_core_tb/dut/*

configure wave -signalnamewidth 1
