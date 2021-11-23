#!/bin/bash
echo "BCIFCS - Brief Case Insensitive Filename and Content Search v0.01"
cd /home/$USER
echo "Gnu GPL v2.1"
echo
read -p "What? Enter search term: " WHATDOISEARCH
read -ep "Where? Enter search folder path: " WHEREDOISEARCH
echo
rgrep -ci $WHATDOISEARCH $WHEREDOISEARCH | grep -n --no-ignore-case $WHATDOISEARCH
echo
#cat >> rggrep_script.count &&
echo "Thanks for using rgrep into grep search script, the best way to print a small search output."
