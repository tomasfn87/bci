#!/bin/bash

echo "GBCI - Green Brief Case Insensitive Filename and Content Search v0.03"
echo "Displays how many times PATTERNS appears in a directory"
echo "Gnu GPL v2.1"; echo

#function red(s) {
#    printf "\033[1;31m" s "\033[0m "
#}

#v0.1
#read -p "Enter search term: " WHATDOISEARCH
#read -e -i "$(echo | pwd)"/ -p "Where? Enter search folder path: " WHEREDOISEARCH
    # -e is the option you need to turn on auto-complete. It works only with
	#    absolute paths.

#v0.2
read -p "PATTERNS: " WHATDOISEARCH && read -p "DIRECTORY: " -e -i "$(echo $HOME)"/ WHEREDOISEARCH; echo

#v0.1
#rgrep -eci $WHATDOISEARCH $WHEREDOISEARCH | grep -e -n --no-ignore-case $WHATDOISEARCH

#v0.2
#egrep -rci $WHATDOISEARCH $WHEREDOISEARCH | grep -v ':0' | egrep --color=always -w :
#egrep -cr while /home/morbi/bash_script --color=never | grep -v ':0' | egrep +(/|:|$USER)

#v0.3
egrep -rcis $WHATDOISEARCH $WHEREDOISEARCH | grep -v ':0' | gawk -F":" ' 
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
    } '

#v0.4
#egrep -rci $WHATDOISEARCH $WHEREDOISEARCH | grep -v ':0' | gawk -F"/" ' 
#'
    
echo
echo "
Thanks for using GBCI search script, the best way to print a small and colored search output.
"


#"\033[0m"
