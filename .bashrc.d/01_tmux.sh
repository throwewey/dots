#!/usr/bin/env bash

function setupwindows() { 
	echo "creating and renaming windows"
	tmux rename-window startup
	tmux new-window 
	tmux select-window -t :1
	tmux rename-window nvim-1
	tmux new-window 
	tmux select-window -t :2
	tmux rename-window nvim-2
	tmux new-window 
	tmux select-window -t :3
	tmux rename-window nvim-3
	tmux select-window -t :0
	# Starting tmux startup scripts
	if [ -d ~/.tmux.d ]; then
    		for rc in ~/.tmux.d/*; do
        		if [ -f "$rc" ]; then
            			. "$rc"
        		fi
    		done
	fi
	unset rc
	export TMUX_SETUP="true"
}

# Start a tmux session and run appropriate startup scripts
if [[ $(ps -e | grep tmux) && ! $TMUX ]]; then
	# Ran in Parent Window
	echo "attaching old session..."
	tmux attach -t mysession
elif [[ ! $TMUX ]]; then
	#Ran in Parent Window (again...)
	echo "creating new session..."
	tmux -u new -t mysession
elif [[ $TMUX_SETUP == "true" ]]; then
	#TMUX post-setup
	echo "setup scripts already ran"
elif [[ $TMUX_PANE == "%0" ]]; then
	#TMUX pre-setup
	echo "running setup scripts..."
	setupwindows	
fi
