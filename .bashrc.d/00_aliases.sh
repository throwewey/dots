#!/usr/bin/env bash
# Aliases (Both for TMUX and regular shell)
if [[ -n $TMUX ]]; then
    # TMUX
    alias q='tmux detach'
    alias exit='tmux detach'
    alias tkill='tmux kill-pane'
    function vi() {
	    if [[ $TMUX_PANE == "%0" ]]; then
		    echo "try using vi in another window"
	    else
		    filename=$(sed 's/.*\///' <(echo $1))
		    tmux rename-window $filename
		    nvim $1
		    pane=$(sed 's/%//' <(echo $TMUX_PANE))
		    tmux rename-window nvim-$pane
	    fi
    }
else 
    # Parent Shell
    alias goback='tmux attach -t mysession'
    alias q='exit'
fi
# Universal
alias dmenu_long="dmenu -fn 'Noto Sans 14' -nb '#141b1e' -nf '#dadada' -sb '#6cbfbf' -sf '#141b1e'"
