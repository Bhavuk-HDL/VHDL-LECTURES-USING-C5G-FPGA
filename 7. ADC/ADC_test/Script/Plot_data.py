
print("Ploting data from C5G ADC")

import serial
from time import sleep
import matplotlib.pyplot as plt
import matplotlib.animation as animation

port = "COM5"
baudrate = 115200
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


rows = 4
cols = 2
Channel_num = 0
xar = []
yar = []

fig, axes = plt.subplots(rows, cols)

for row_num in range(rows):
    for col_num in range(cols):
        Channel_num += 1
        ax = axes[row_num][col_num]
        ax.set_title(f"Channel : {Channel_num}")
        ax.set_xlabel("Sample Number (N)")
        ax.set_ylabel("Voltage (V)")


def graph(i, xar, yar):
    
    global rows, cols
    
    ser.write(('W').encode('utf-8'))
    sleep(0.1)
    data = ser.read(1000)
    channel_no = 0
    if len(data) == 0:
        ser.write(('W').encode('utf-8'))
        sleep(0.1)
        data = ser.read(1000)
        print("Try 1 Failed!!!")
        if len(data) == 0:
            ser.write(('W').encode('utf-8'))
            sleep(0.1)
            data = ser.read(1000)
            print("Try 2 Failed!!!")
            if len(data) == 0:
                ser.write(('W').encode('utf-8'))
                sleep(0.1)
                data = ser.read(1000)
                print("Try 3 Failed!!!")
                print("Closing...")
                animate = 0
                sleep(0.5)
                ser.close()

    for i in range(0, 800, 2):
        dat = ((data[i + 1] << 8) + data[i])
        dat = 4095 & dat
        dat = round((5 * (dat / 4095)), 3)
        yar.append(dat)
        xar.append(i / 2) 
    channel_no = ((data[3] << 8) + data[2]) >> 12
    xar = xar[-400:]
    yar = yar[-400:]
    ax = plt.subplot(rows, cols, channel_no)
    ax.clear()
    ax.set_title(f"Channel : {channel_no}")
    ax.set_xlabel("Sample Number (N)")
    ax.set_ylabel("Voltage (V)")
    ax.plot(xar, yar)

animate = animation.FuncAnimation(fig, graph, fargs=(xar, yar), interval=20)
fig.suptitle('ADC Value V/S Time', fontweight='bold')
fig.tight_layout(pad=0.4, w_pad=0.5, h_pad=1.0)
plt.show()

print("Closing...")
sleep(0.5)
ser.close()