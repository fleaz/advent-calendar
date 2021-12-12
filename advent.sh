#!/usr/bin/env bash
set -eu

if [ ! -f ideas.txt ] || [ "$(wc -l < ideas.txt)" -ne 24 ]; then
    echo "Please completly fill the ideas.txt with 24 entries"
    exit 1
fi

if [ ! -f .shuffled ]; then
    echo "Generating shuffled advent calendar"
    shuf -o .shuffled ideas.txt
fi

MONTH=$(date "+%m")

if [ "$MONTH" -ne 12 ]; then
    echo "It's not not yet december! ;)"
    exit 1
fi

DAY=$(date "+%d")

if [ $# -eq 1 ] && [ -n "$1" ]; then
    if [ "$1" -le "$MONTH" ]; then
        DAY=$1
    else
        echo "You are not allowed to look into the future. This incident will be reported!"
        echo "https://xkcd.com/838/"
        exit 1
    fi
fi

echo "Behind door number $DAY:"
sed "${DAY}q;d" .shuffled
