#! /bin/bash
set -eu

if [ "$(cat ideas.txt | wc -l)" -ne 24 ]; then
    echo "Please completly fill the ideas.txt with 24 entries"
    exit 1
fi

if [ ! -f .shuffled ]; then
    echo "Generating shuffled  advent calendar"
    shuf ideas.txt > .shuffled
fi

MONTH=$(date "+%m")
if [ "$MONTH" -ne 12 ]; then
    echo "It's not not yet december! ;)"
    exit 1
fi

DAY=$(date "+%d")
echo "Behind today's door:"
sed "${DAY}q;d" .shuffled
