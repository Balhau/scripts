#!/bin/bash
#xrandr --auto --output HDMI1 --mode 1920x1080 --right-of eDP1
#xrandr --auto --output DP2 --mode 1920x1080 --rotate left --right-of HDMI1
#xrandr --auto --output DP2 --mode 1680x1050 --right-of eDP1

MODE=$1

if [ $MODE -eq 1 ]
then
	echo "Set work desktop: $MODE"
	xrandr --auto --output HDMI1 --mode 1920x1080 --right-of eDP-1
	xrandr --auto --output DP2 --mode 1920x1080 --rotate left --right-of HDMI1
elif [ $MODE -eq 2 ]
then
	echo "Set wide second desktop: $MODE"
	xrandr --auto --output DP2 --mode 1920x1080 --right-of eDP-1
elif [ $MODE -eq 3 ]
then
	echo "Set second work desktop: $MODE"
	xrandr --auto --output HDMI-1 --mode 1920x1080 --right-of eDP-1
elif [ $MODE -eq 4 ]
then
	echo "Set home desktop: $MODE"
	xrandr --auto --output DP-2 --mode 1680x1050 --right-of eDP-1
fi
