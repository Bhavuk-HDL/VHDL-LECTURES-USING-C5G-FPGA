# D:\intelFPGA_lite\Workspace\AFE5809EVM_SDRAM\Scripts
print("Commanding SDRAM tho' C5G")

import serial
from time import sleep

port = "COM5"
baudrate = 1000000
parity = serial.PARITY_NONE
bits = serial.EIGHTBITS
stopbits = serial.STOPBITS_ONE

ser=serial.Serial()
ser.port = port
ser.baudrate = baudrate
ser.timeout = 2
ser.parity = parity
ser.bytesize = bits
ser.stopbits = stopbits
ser.open()
print("Port Configurations: ", ser)
print("Starting...")
sleep(2)

Key = 0
    
while (Key != 'exit'):
    Key = input('Input Data : ')
    if (Key == 'exit'):
        break
    if (Key == 'READ'):
        print(ser.read(1))
    else:
        ser.write((Key).encode('utf-8'))
        print("Data Send")
    sleep(0.5)

print("Closing...")
sleep(0.5)
ser.close()