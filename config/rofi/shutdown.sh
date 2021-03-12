#!/bin/bash

chosen=$(echo -e "Exit BSPWM\nPower Off\nRestart" | rofi -dmenu -i -lines 3 -width 11)

if [[ $chosen = "Exit BSPWM" ]]; then
	killall bspwm
elif [[ $chosen = "Power Off" ]]; then
	sudo poweroff
elif [[ $chosen = "Restart" ]]; then
	sudo reboot
fi
