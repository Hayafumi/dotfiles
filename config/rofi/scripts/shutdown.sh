#!/bin/bash

chosen=$(echo -e "Log Off ﴚ\nPower Off \nReboot ﰇ\nSuspend ⏼\nHibernate 鈴" |
  rofi -dmenu -i -lines 5 -width 10)

if [[ $chosen = "Log Off ﴚ" ]]; then
	killall xinit
elif [[ $chosen = "Power Off " ]]; then
	sudo poweroff
elif [[ $chosen = "Reboot ﰇ" ]]; then
	sudo reboot
elif [[ $chosen = "Suspend ⏼" ]]; then
	loginctl suspend
elif [[ $chosen = "Hibernate 鈴" ]]; then
	loginctl hibernate
fi
