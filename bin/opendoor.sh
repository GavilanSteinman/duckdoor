#!/bin/bash
echo "26" > /sys/class/gpio/export
echo "out" > /sys/class/gpio/gpio26/direction
echo "6" > /sys/class/gpio/export
echo "out" > /sys/class/gpio/gpio6/direction

echo "0" > /sys/class/gpio/gpio26/value
echo "0" > /sys/class/gpio/gpio6/value
echo opening
