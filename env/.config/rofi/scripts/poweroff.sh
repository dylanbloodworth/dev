#!/usr/bin/env bash

if [[ "$1" == "Lock" ]]; then
	loginctl lock-session
	exit 0
fi


if [[ "$1" == "Sleep" ]]; then
	systemctl suspend
	exit 0
fi


if [[ "$1" == "Restart" ]]; then
	systemctl reboot
	exit 0
fi

if [[ "$1" == "Power Off" ]]; then
	systemctl poweroff
	exit 0
fi
echo "Lock"
echo "Sleep"
echo "Restart"
echo "Power Off"
