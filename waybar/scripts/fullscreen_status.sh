#!/usr/bin/env bash

# Get current workspace ID
current_workspace=$(hyprctl activeworkspace -j | jq -r '.id')

# Check if any client on current workspace is fullscreen (value is an int, not boolean)
is_fullscreen=$(hyprctl clients -j | jq --arg ws "$current_workspace" '
  [.[] | select(.workspace.id == ($ws | tonumber) and .fullscreen != 0)] | length
')

if [ "$is_fullscreen" -gt 0 ]; then
    echo '{ "text": "󰊓", "class": "fullscreen" }'
else
    echo '{ "text": "󰊔", "class": "not-fullscreen" }'
fi
