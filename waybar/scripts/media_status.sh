#!/usr/bin/env bash

# Get the metadata for the current player
metadata=$(playerctl metadata --format '{{ artist }} - {{ title }}' 2>/dev/null)

if [ -z "$metadata" ]; then
    # No media playing
    echo '{ "text": "", "tooltip": "" }'
else
    # Trim to max 40 characters
    trimmed=$(echo "$metadata" | cut -c1-40)

    # Add ellipsis if truncated
    if [ ${#metadata} -gt 40 ]; then
        trimmed="$trimmed…"
    fi

    echo '{ "text": "'"$trimmed"'", "tooltip": "'"$metadata"'" }'
fi
