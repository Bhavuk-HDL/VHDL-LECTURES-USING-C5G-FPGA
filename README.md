# VHDL-LECTURES-USING-C5G-FPGA
# VHDL Lectures using Cyclone V GX Starter Kit

## Description

This repository contains Quartus projects using VHDL that can be used to learn the basics of language and FPGA or just simply in the projects.
All the codes are written intentionally in very easy way so that one can actually understand the language. This repository was made to help
begineers in the VHDL language or for people who are using FPGA for the first time.
With a few codes, Python was also used to interface and control with PC.

For more information on VHDL, you can use this open source book for learning [here] (http://freerangefactory.org/pdf/df344hdh4h8kjfh3500ft2/free_range_vhdl.pdf)

For information on Cyclone V GX Starter Kit, you can see the specifications [here] (http://c5g.terasic.com/)

Other IC interfaces:

FT232 (UART)

IS61WV25616 (SRAM)

MLT42L128M32D1LF-25WTA (LPDDR2)

ADV7513 (HDMI)

SSM2603 (AUDIO)

SSM2603 (ADC)

## Lectures

### 1. Leds and 7 Segments
This code demonstrate the use of clocks of C5G.
Onboard LEDs and 7 segment display is used to show that.
Leds blink according to counter of one clock while
second clock is used to control Segment display.

### 2. Debounce Switch
This code demonstrate the use of KEY in debounce of C5G.
KEYs are mechanical switched so when we press it, it gives
us a few rises and falls before it gets to a stable state.
It is due to the debouncing effect.
This code counters that effects by taking a delay when we
are reading the KEY.

### 3. Communication Protocols
Here, you can see the codes for 3 Communication Protocols:
I2C, SPI, UART
#### I2C
This code demonstrate the I2C protocol on C5G.
In I2C we have 2 pins, one a clock out to the device
or daughter card and the other is a data pin.
On the rising edge of the clock, data is latched in
the device and after 8 data bits, acknowledgement is
send by device if everything is correct.
Usually, we first send device register address, then address
of the register where we want to write and then data.
This code gives data and clock at GPIO.
#### SPI
This code demonstrate the SPI protocol on C5G.
Here 3 pins are used,
SEN to enable the slave chip.
SCLK as the clock for the chip.
SDATA to send the data to the chip.
CPOl and CPHA are 1 both (MODE 3).
#### UART
This code demonstrate the use of UART FT232 of C5G.
Different ways are used to use the UART protocols.

### 4. Memory Controllers
2 Memory controllers made:
SRAM andSDRAM
#### SRAM
This code demonstrate the use of SRAM of C5G.
SWs used to Latch data and address to SRAM and to start Tx.
LEDs are used to display data and address.
Data as well as address is given from PC via UART.
Qsys is NOT used and the controller is developed
soft-wired.
#### SDRAM
This code demonstrate the use of SDRAM LPDDR2 of C5G.
Different ways are used to use the SDRAM.
Qsys is used to configure the cyclone V internal 
SDRAM controller, ie. controller is hard wired.

### 5. Video Out
2 video protocols are developed:
VGA and HDMI
#### VGA
This code demonstrate the use of VGA through GPIO of C5G.
This code shows how to get VGA output from C5G GPIOs.
only 3 bit video resolution is used for it but if you
want to use more resolution then you can add a ladder
circuit using registers to increase the resolution
according to your need.
#### HDMI
This code demonstrate the use of HDMI chip ADV7513 of C5G.
This code shows how to initilize the ADV7513 for HDMI out
via I2C protocol.Output resolution is 1918x1079 with 
8 bits for defining RGB each.

### 6. Audio
This code demonstrate the use of Audio chip SSM2603 of C5G.
This code shows how to initilize the SSM2603 for Audio out
via I2C protocol. It gets the audio out by generating a
single tone from the chip.

### 7. ADC
This code demonstrate the use of onboard ADC chip LTC2308fb of C5G.
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
A code just to use single channel is also present.

### These are just demonstrations for the begineers. Changes may be needed to be used in a project.
### These can be used for reference or to learn the basics of HDL and FPGA.
