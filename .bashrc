# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

if [ "$COLORTERM" == "xfce4-terminal" ]; then
	export TERM=xterm-256color
	source ~/.bash_profile
fi

if [ ! -e BASH_CONFIG ]; then
	source ~/.aliases
	source ~/.ps1.bash
	export BASH_CONFIG=1
fi
