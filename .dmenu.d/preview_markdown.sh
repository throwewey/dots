#!/usr/bin/env bash
shopt -s expand_aliases
source ~/.bashrc.d/00_aliases.sh

if [[ $1 == "-h" || $1 == "--help" || $1 == "help" ]]; then
	echo -e " This is a script to preview markdown files using the surf browser. Insert a \n"\
		"location (\$1) for surf and a file.md location (\$2) to choose from."
	exit 1
fi

choice=$(ls $2 | dmenu_long -p "Choose a file to preview: ")
if [[ $choice != "" && $choice ==  *.md ]]; then
	pandoc --from markdown --to html $2'/'$choice -o $2'/.tmp.html' 
	surf -l $1 $2'/.tmp.html' >/dev/null  2>&1 &
	sleep 5
	rm $2'/.tmp.html'
fi
