#!/usr/bin/env bash

LOCK_IMAGE="$HOME/Pictures/night.jpg"

DATE=$(date +"%A, %B %-d")
WEATHER=$(curl wttr.in?format="+%c+%t")

ringcolor=FFFFFFFF
insidecolor=00000000
linecolor=00000000
separatorcolor=00000000

ringvercolor=00000000
insidevercolor=00000000

ringwrongcolor=00000000
insidewrongcolor=00000000

keyhlcolor=AAAAAAFF
bshlcolor=AAAAAAFF

i3lock -t -i "$LOCK_IMAGE" \
    --clock --force-clock --timepos="w/2:h/2" --timesize=96 --timecolor=FFFFFFFF \
    --datestr="$DATE" --datepos="tx:ty+80" --datesize=32 --datecolor=FFFFFFFF \
    --indpos="w/2-r/2:h-r*2" --radius 20 \
    --ringcolor=$ringcolor --insidecolor=$insidecolor --linecolor=$linecolor \
    --separatorcolor=$separatorcolor --ringvercolor=$ringvercolor \
    --insidevercolor=$insidevercolor --veriftext='' --ringwrongcolor=$ringwrongcolor \
    --insidewrongcolor=$insidewrongcolor --wrongtext='' --keyhlcolor=$keyhlcolor \
    --bshlcolor=$bshlcolor --noinputtext=''
