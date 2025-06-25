#!/usr/bin/env bash

sent=0

while true; do
	current=$(cat /sys/class/power_supply/BAT1/capacity)

	if [[ $current -lt 20 && sent -eq 0 ]]; then
		sent=1
		notify-send --urgency=critical "BATTERY LEVEL" "Battery at 20%"
	elif [[ $current -ge 20 ]]; then
		sent=0
	fi
done
