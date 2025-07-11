#!/bin/bash

options="Shutdown\nReboot\nSuspend\nHibernate\nLogout"

chosen=$(echo -e "$options" | rofi -dmenu -i -p "Power Menu")

case "$chosen" in
  Shutdown) systemctl poweroff ;;
  Reboot) systemctl reboot ;;
  Suspend) hyprlock & systemctl suspend ;;
  Hibernate) hyprlock & systemctl hibernate ;;
  Logout) kitty --class invis-kitty -e bash -c '~/.local_bin/logout_hyprland; sleep 4'  ;;
esac

