#!/usr/bin/env bash
if [[ -x "$(command -v kmonad)" && -e "/dev/input/by-id/usb-Keychron_Keychron_Q11_59006800075041525233322000000000-if01-event-kbd" ]]; then
	kmonad ~/.config/kmonad/keychron_Q11.kbd >/dev/null 2>&1 &
	echo "keychron Q11 found, starting kmonad for keychron Q11 keyboard..."
fi


