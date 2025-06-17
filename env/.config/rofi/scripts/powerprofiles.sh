#!/usr/bin/env bash

case "$(printf "Balanced\nPower Saver\nPerformance" | rofi -dmenu -i -l 3 -p "$(powerprofilesctl get)" )" in
	"Balanced")
		powerprofilesctl set balanced
		;;
	"Power Saver")
		powerprofilesctl set power-saver
		;;
	"Performance")
		powerprofilesctl set performance
		;;
	*)
		exit 0
		;;
esac
