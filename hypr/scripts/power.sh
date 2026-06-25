#!/bin/bash

choice=$(printf "Shutdown\nReboot\nSuspend\nLock" | fuzzel --dmenu)

case "$choice" in
    Shutdown) systemctl poweroff ;;
    Reboot) systemctl reboot ;;
    Suspend) systemctl suspend ;;
    Lock) hyprlock ;;
esac
