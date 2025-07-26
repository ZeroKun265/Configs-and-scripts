#!/bin/bash

# Get DND status from swaync-client
DND=$(swaync-client --get-dnd 2>/dev/null)

if [[ "$DND" == "true" ]]; then
    echo ""  # Font Awesome bell-slash
else
    echo ""  # Font Awesome bell
fi

