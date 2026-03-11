#!/usr/bin/env bash
if [[ "$(command -v kmonad)" && -e "/dev/input/by-path/platform-i8042-serio-0-event-kbd" ]]; then
	kmonad ~/.config/kmonad/thinkpad.kbd >/dev/null 2>&1 &
	echo "starting kmonad for thinkpad keyboard..."
fi
