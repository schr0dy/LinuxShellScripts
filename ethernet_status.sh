#!/bin/sh

ethernet=$(/usr/sbin/ifconfig enp3s0 | grep "inet " | awk '{print $2}')
wifi=$(/usr/sbin/ifconfig wlp4s0 | grep "inet " | awk '{print $2}')

if [ "$ethernet" != "" ]; then
	echo "%{F#2495e7} %{F#ffffff}$ethernet%{u-}"
elif [ "$wifi" != "" ]; then
	echo "%{F#2495e7} %{F#ffffff}$wifi%{u-}"
else
	echo "%{F#ff0000}睊 Disconnected%{u-}"
fi
