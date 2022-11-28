#!/bin/sh

IFACE=$(/usr/sbin/ifconfig | grep nordlynx | awk '{print $1}' | tr -d ':')

if [ "$IFACE" = "nordlynx" ]; then
   echo "%{F#1bbf3e} %{F#ffffff}$(/usr/sbin/ifconfig nordlynx | grep "inet " | awk '{print $2}')${u-}"
else
   echo "%{F#FF0000}%{u-} Disconnected"
fi
