#!/usr/bin/env bash
if [[ $1 == "-h" || $1 == "--help" || $1 == "help" ]]; then
	echo -e " This script is to run a dmenu prompt to open to a webpage from any listed in \n"\
	        "a given directories bookmarks.txt file. The browser that is ran is surf, which\n"\
	        "all appropriate files are found in the DIR/.surf folder. If there is not a    \n"\
	        "given bookmarks.txt, one will be created and the default duckduckgo will be   \n"\
	        "added."
	exit 0
fi
if [[ ! -f "$1"'/bookmarks.txt' ]]; then
	echo "https://www.duckduckgo.com" > $1"/bookmarks.txt"
fi
choice=$(cat $1"/bookmarks.txt" | dmenu -p "Choose a webpage to open: ")
if [[ $choice != "" ]]; then
	surf -l $1 $choice
fi
