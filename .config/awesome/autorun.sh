#!/bin/sh

# from arch wiki: run if not running already
function run {
        if ! pgrep -f $1 ;
        then
                $@&
        fi
}

run picom

# autolock after 10 min, lock is custom executable
# http://plankenau.com/blog/post/gaussianlock
xautolock -time 10 -locker lock

xbindkeys
xrandr --rate 120
