transcript on
if ![file isdirectory ADC_test_iputf_libs] {
	file mkdir ADC_test_iputf_libs
}

if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

###### Libraries for IPUTF cores 
###### End libraries for IPUTF cores 
###### MIF file copy and HDL compilation commands for IPUTF cores 


vcom "D:/intelFPGA_lite/Workspace/ADC_test/pll_sim/pll.vho"

vcom -93 -work work {D:/intelFPGA_lite/Workspace/ADC_test/ADC.vhd}
vcom -93 -work work {D:/intelFPGA_lite/Workspace/ADC_test/ADC_test.vhd}
vcom -93 -work work {D:/intelFPGA_lite/Workspace/ADC_test/output_files/Tx.vhd}
vcom -93 -work work {D:/intelFPGA_lite/Workspace/ADC_test/Rx.vhd}

