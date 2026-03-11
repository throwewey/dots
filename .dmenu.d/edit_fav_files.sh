#!/usr/bin/env bash
shopt -s expand_aliases
source ~/.bashrc.d/00_aliases.sh

if [[ $1 == "-h" || $1 == "--help" || $1 == "help" ]]; then
	echo -e " This script is to run a dmenu prompt to open a neovim editor on all your fav \n"\
	        "files. This file lives in the DIR file given. If there is no file listed it   \n"\
	        "will create a blank file and add itself to it."
	exit 1
fi

if [[ ! -f "$1"'/favfiles.txt' ]]; then
	echo $(pwd)'/'$1'/favfiles.txt' > $1'/favfiles.txt'
fi

choice=$(cat $1'/favfiles.txt' | dmenu_long -p "Select a file to edit: ")
if [[ $choice != "" ]]; then
	session="mysession"
	pane="${session}:$(tmux display-message -p '#W')"
	if [[ $pane != "mysession:startup" && -n $choice ]]; then
		tmux send-keys -t "$pane" C-z 'vi ' $choice Enter
	fi
fi
