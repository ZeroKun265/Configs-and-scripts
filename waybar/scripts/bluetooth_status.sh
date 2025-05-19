#!/usr/bin/env bash

if rfkill list bluetooth | grep -q "Soft blocked: no"; then
    echo '{ "text": "󰂯", "class": "on" }'
else
    echo '{ "text": "󰂲", "class": "off" }'
fi
