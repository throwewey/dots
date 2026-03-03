#!/usr/bin/env bash
# Sourcing aliases for dmenu and running dmenu
file=$(cat ~/.favfiles | dmenu -p "Select a file to edit: ")
# Selecting active tmux window and opening file
session="mysession"
pane="${session}:$(tmux display-message -p '#W')"
if [[ $pane != "mysession:startup" && -n $file ]]; then
	tmux send-keys -t "$pane" C-z 'vi ' $file Enter
else
	tmux send-keys -t "$pane" C-z 'echo "failed to open fav file"' Enter
fi
