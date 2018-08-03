import os
from gpiozero import MotionSensor
from time import sleep
from signal import pause

os.system("echo none | sudo tee /sys/class/leds/led0/trigger | echo 1 | sudo tee /sys/class/leds/led0/brightness")

print("Power LED disabled")

motionSensor = MotionSensor(17)

print("Motion Detection started")

TIMEOUT = 30
STEP = 1
monitorEnabled = True
stepCounter = 0

def handleMotion():
    global TIMTEOUT, STEP, monitorEnabled, stepCounter
    while True:
	sleep(STEP)
	if motionSensor.motion_detected:
	    stepCounter = 0
	    enableMonitor()
	    monitorEnabled = True
        while stepCounter < TIMEOUT:
	    if motionSensor.motion_detected:
		stepCounter = 0
	    sleep(STEP)
	    stepCounter += STEP
	if monitorEnabled:
	    disableMonitor()
	    monitorEnabled = False

def enableMonitor():
    os.system("vcgencmd display_power 1")

def disableMonitor():
    os.system("vcgencmd display_power 0")

enableMonitor()
handleMotion()

pause()
