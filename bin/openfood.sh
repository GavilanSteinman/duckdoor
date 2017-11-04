#!/bin/bash
echo "4" > /sys/class/gpio/export
echo "out" > /sys/class/gpio/gpio4/direction
echo "22" > /sys/class/gpio/export
echo "out" > /sys/class/gpio/gpio22/direction

echo "1" > /sys/class/gpio/gpio22/value
echo "1" > /sys/class/gpio/gpio4/value
