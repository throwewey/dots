# .bashrc
# Setting custom PS1
PS1="\e[1;33m\u@\h \e[1;32m\w\n\e[m-> \e[1;36m \@, \d \e[m: "

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# Adding local bin path
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc
