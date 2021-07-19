transcript on
if ![file isdirectory top_iputf_libs] {
	file mkdir top_iputf_libs
}

if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

###### Libraries for IPUTF cores 
###### End libraries for IPUTF cores 
###### MIF file copy and HDL compilation commands for IPUTF cores 


vcom "D:/intelFPGA_lite/Workspace/VGA/pll_sim/pll.vho"

vcom -93 -work work {D:/intelFPGA_lite/Workspace/VGA/top.vhd}

