#!/bin/bash

toRed() { gawk -v text="$1" 'BEGIN {
    printf "%s", "\033[1;31m" text "\033[0m" }';
}

WHATDOISEARCH="$1";
WHEREDOISEARCH="$2";

if [ -d "$WHEREDOISEARCH" ]; then
    egrep -rcis "$WHATDOISEARCH" "$WHEREDOISEARCH" | grep -v ':0' | gawk -F":" '
    BEGIN {
        printf "(%s) /%s/%s\n_______________________\n",
            "\033[33m" "Ocurrences" "\033[0m",
            "\033[36m" "Path" "\033[0m",
            "\033[1;36m" "File" "\033[0m"
    }
    {
        printf "(%s) ",
            "\033[0;31m" $2 "\033[0m"
    }
    {
        printf "%s\n",
            "\033[1;32m" $1 "\033[0m"
    }'
    exit 0; fi;

echo "`toRed ERROR`: directory not found";
exit 1;
