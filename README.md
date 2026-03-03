# Throwewey's Back-Up Repo (Burrr!)
This is a back up of all my config files.

## The Big Three
- Display Manager: XDM, configured at /etc/X11/xdm/Xresources and ~/.Xresources
- Window Mananger: LeftWM, configured at XDG_CONFIG/leftwm
- Terminal Emulator: st, patched at .suckless.d/

## From login to Run
LeftWM launches a terminal at login. This causes bash to source all files in ~/.bashrc.d mainly tmux.sh. This will launch a four window tmux session. One window is used to run all user startup scripts in ~/.tmux.d while the rest are exclusively meant to run the vi function.
Startup scripts incude the following:
- TMUX itself, configured at ~/.tmux.conf
- Keyboard management: kmonad, configurations kept at XDG_CONFIG/kmonad

### Honorable Mentions
- Grub, configuration kept at /etc/default/grub/themes
- Dmenu, scripts configured at ~/.dmenu.d
- surf, patched at .suckless.d/
- Feh, simple, easy, light
