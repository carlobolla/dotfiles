#!/bin/bash

chosen="$(echo -e " Shutdown\n Reboot\n Lock\n Suspend\n Logout" | wofi -p "powermenu" -dmenu -W 450 -H 200)"
case $chosen in
    " Shutdown")
        systemctl poweroff
        ;;
    " Reboot")
        systemctl reboot
        ;;
    " Lock")
        swaylock -f -c 000000
        ;;
    " Suspend")
        playerctl pause
        amixer set Master mute
        systemctl suspend
        ;;
    " Logout")
        swaymsg exit
        ;;
esac
