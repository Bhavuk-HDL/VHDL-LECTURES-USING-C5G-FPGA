
print("UART LOOPBACK")

import serial
from time import sleep

port = "COM5"
baudrate = 2000000
parity = serial.PARITY_EVEN
bits = serial.EIGHTBITS
stopbits = serial.STOPBITS_ONE

ser=serial.Serial()
ser.port = port
ser.baudrate = baudrate
ser.timeout = 1
ser.parity = parity
ser.bytesize = bits
ser.stopbits = stopbits
ser.open()
print("Port Configurations: ", ser)
print("Starting...")
sleep(0.5)

rx_dat = 0

while (rx_dat != '`'):
    rx_dat = input()
    ser.write((rx_dat).encode('utf-8'))
    data = ser.read(4)
    print(data)

print("Closing...")
sleep(0.5)
ser.close()