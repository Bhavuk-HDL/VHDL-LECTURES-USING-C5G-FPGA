This code demonstrate the use of onboard ADC chip LTC2308fb of C5G.
(Cyclone V GX Starter Kit)

Data from all channels is taken and displayed on
LEDs as well as send to PC via UART.

500 samples from each channel is taken before changing the
channel. In PC 400 of these samples are shown of each channel.
This is done so to be able to get to higher frequency with it.

When data is being send via UART, ADC still converts
the analog data. So, at that time, data is lost.
The more the baudrate, less the data loss. Use of 
SRAM or SDRAM may be needed to avoid the data loss.

Python script is there that taked the data and plots the
voltage vs sample number graph.

This is just a demonstration for the begineers.
Changes may be needed to be used in a project. These can
be used for reference or to learn the basics of 
HDL and FPGA.