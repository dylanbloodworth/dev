#!/usr/bin/env bash

pid=$(pgrep "nm-applet")

if [[ -z $pid ]] ; then
	nm-applet
	echo "starting nm-applet with process ID $(pgrep nm-applet)"
else
	killall nm-applet
	echo "Stopping nm-applet ..."
fi

