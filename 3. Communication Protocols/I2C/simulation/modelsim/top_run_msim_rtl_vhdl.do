transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -2008 -work work {D:/intelFPGA_lite/Workspace/I2C/top.vhd}
vcom -2008 -work work {D:/intelFPGA_lite/Workspace/I2C/I2C.vhd}

