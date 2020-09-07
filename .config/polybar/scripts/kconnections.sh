#!/bin/sh

alive=$(nmcli connection show --active | grep -c Hotspot)

case "$1" in
        --toggle)
                if [ "$alive" = 0 ]; then
                        nmcli connection up Wifi\ Hotspot passwd-file ~/Documents/passwd
                else
                        nmcli connection down Wifi\ Hotspot
                fi
        ;;
        *)
        if [ "$alive" = 0 ]; then
                echo "Hotspot Off"
        else
                echo "Hotspot On"
        fi
        ;;
esac
