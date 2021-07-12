#!/bin/python3

import psutil

battery = psutil.sensors_battery()
status = battery.power_plugged
percent = battery.percent
percentf = format(percent, '.0f')

if status == True:
    print("🔌", "%s%%" % percentf)
if status == False:
    print("🔋", "%s%%" % percentf)
if status == None:
    print("❤️", "%s%%" % percentf)
