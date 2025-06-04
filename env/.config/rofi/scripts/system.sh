#!/usr/bin/env bash

case "$(printf "Kill App\nLock\nZzz\nRestart\nShutdown" | rofi -dmenu -i -l 5 -p "" )" in
	"Kill App")
		ps a -o pid,comm | rofi -dmenu -i -p Kill | xargs -r kill
		;;
	"Lock")
	        loginctl lock-session
		exit 0
		;;
	"Zzz")
	        systemctl suspend
	        exit 0
		;;
	"Zzz")
	        systemctl reboot
	        exit 0
		;;
	"Zzz")
	        systemctl poweroff
	        exit 0
		;;
	*)
		exit 0
		;;
esac
