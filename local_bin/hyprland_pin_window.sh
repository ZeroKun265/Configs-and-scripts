#!/usr/bin/env bash

OUTPUT=$(hyprctl dispatch pin active 2>&1)

if [[ "$OUTPUT" == *"Window does not qualify to be pinned"* ]]; then
  notify-send "Window can't be pinned" "Try enabling floating mode first."
else
  notify-send "Toggled pin" ""
fi

