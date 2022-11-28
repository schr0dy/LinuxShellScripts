#!/bin/bash
state=$(upower -i `upower -e | grep 'BAT'` | grep state | awk '{print $2}')
battery=$(upower -i `upower -e | grep 'BAT'` | grep 'percentage' | awk '{print $2}')
if [ $state == 'discharging' ]; then
	echo "%{F#ff0000}$battery%{u-}"
else
	echo "%{F#00ff00}$battery%{u-}"
fi
