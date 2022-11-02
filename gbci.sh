#!/bin/bash

toRed() { gawk -v text="$1" 'BEGIN {
    printf "%s", "\033[1;31m" text "\033[0m" }';
}

WHATDOISEARCH="$1";
WHEREDOISEARCH="$2";

if [ -d `realpath -q "$WHEREDOISEARCH"` ]; then
    egrep -rcis "$WHATDOISEARCH" "$WHEREDOISEARCH" | grep -v ':0' | gawk -F":" '
    BEGIN {
    printf "%s %s %s\n", "\033[0;33m" "Filepath/file" "\033[0m",
                          "\033[1;31m" " - " "\033[0m",
                          "\033[0;31m" "# of ocurrences" "\033[0m"
    }
    {
    printf "%s %s", "\033[1;32m" $1 "\033[0m",
                    "\033[1;30m" " - " "\033[0m"
    }
    {
    printf "%s\n", "\033[0;31m" $2 "\033[0m"
    }'
else
    echo "`toRed ERROR`: Directory not found"
fi;

