
import serial
from time import sleep


port = "COM7"
baudrate = 9600
parity = serial.PARITY_NONE
bits = serial.EIGHTBITS
stopbits = serial.STOPBITS_ONE

ser=serial.Serial()
ser.port = port
ser.baudrate = baudrate
ser.timeout = 0.5
ser.parity = parity
ser.bytesize = bits
ser.stopbits = stopbits
ser.open()
print("Port Configurations: ", ser)
print("Starting...")
sleep(2)

for _ in range(0, 10, 1) :
    dat0, dat1, dat2, dat3 = ser.read(4)
    print(hex(dat0), hex(dat1), hex(dat2), hex(dat3))
    dat = dat0<<24 + dat1<<16 + dat2<<8 + dat3
    print(dat)
    sleep(0.1)

ser.close()