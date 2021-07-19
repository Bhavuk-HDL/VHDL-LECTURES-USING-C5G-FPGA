This code demonstrate the I2C protocol on C5G.
(Cyclone V GX Starter Kit)

In I2C we have 2 pins, one a clock out to the device
or daughter card and the other is a data pin.
On the rising edge of the clock, data is latched in
the device and after 8 data bits, acknowledgement is
send by device if everything is correct.

Usually, we first send device register address, then address
of the register where we want to write and then data.

This code gives data and clock at GPIO.

This is just a demonstration for the begineers.
Changes may be needed to be used in a project. These can
be used for reference or to learn the basics of 
HDL and FPGA.