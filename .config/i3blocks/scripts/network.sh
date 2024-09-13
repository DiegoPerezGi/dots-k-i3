#!/bin/bash

wifi=$(iwconfig 2>/dev/null | grep "ESSID" | awk '{print $4}' | sed 's/ESSID://g')
ethernet=$(ip link show | sed -n -e '/state UP/{N; p;}' | grep 'eth')

GREEN=#A3C9A8
RED="#F28C8C"
YELLOW="#F5E0B7"

if [[ "$wifi" != "off/any" && -n "$wifi" ]]; then
  echo -e "<span color=\"$GREEN\">  Wi-Fi: $wifi</span>"
elif [[ -n "$ethernet" ]]; then
  echo -e "<span color=\"$GREEN\">󰈁 Cable de red conectado</span>"
else
  echo -e "<span color=\"$RED\">󰈂 Desconectada</span>"
fi
