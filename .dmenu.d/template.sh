#!/usr/bin/env bash
shopt -s expand_aliases
source ~/.bashrc.d/00_aliases.sh

if [[ $1 == "-h" || $1 == "--help" || $1 == "help" ]]; then
	echo -e " This is a template. Insert a blurb up here as to why you should \n"\
	        "run this and what it does."
	exit 1
fi

if [[ ! -f "$1"'/somefile' ]]; then
	echo 'some text' > $1'/somefile'
fi

choice=$(cat $1'/somefile' | dmenu_long -p "Some operation to perform: ")
if [[ $choice != "" ]]; then
	echo 'perform some operation'
fi
