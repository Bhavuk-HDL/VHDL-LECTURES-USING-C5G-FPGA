transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/intelFPGA_lite/Workspace/UART_test/UART.vhd}
vcom -93 -work work {D:/intelFPGA_lite/Workspace/UART_test/Tx.vhd}
vcom -93 -work work {D:/intelFPGA_lite/Workspace/UART_test/Rx.vhd}

