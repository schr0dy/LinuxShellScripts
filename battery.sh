#!/bin/bash
state=$(upower -i `upower -e | grep 'BAT'` | grep state | awk '{print $2}')
battery=$(upower -i `upower -e | grep 'BAT'` | grep percentage | awk '{print $2}')
percentage=$(upower -i `upower -e | grep 'BAT'` | grep percentage | tr -d % | awk '{print $2}')

if [ $state == 'discharging' ]; then
	if [ $percentage -lt '20' ]; then
		echo "%{F#fcec03}$battery%{u-}"
	else
		echo "%{F#ff0000}$battery%{u-}"
	fi
else
	if [ $battery == '100%' ]; then
		echo "%{F#2ccce4}$battery%{u-}"
	else	
		echo "%{F#00ff00}$battery%{u-}"
	fi
fi
