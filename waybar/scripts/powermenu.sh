#!/bin/bash

options="Shutdown\nReboot\nSuspend\nHibernate\nLogout"

chosen=$(echo -e "$options" | rofi -dmenu -i -p "Power Menu")

case "$chosen" in
  Shutdown) systemctl poweroff ;;
  Reboot) systemctl reboot ;;
  Suspend) systemctl suspend ;;
  Hibernate) systemctl hibernate ;;
  Logout) hyprctl dispatch exit ;;
esac
