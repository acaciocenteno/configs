# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

if [ "$COLORTERM" == "xfce4-terminal" ]; then
	export TERM=xterm-256color
	source .bash_profile
fi

source .aliases
source .git-completion.bash

# Git Config
export GIT_PS1_SHOWCOLORHINTS=1
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUPSTREAM=auto

if [ "${USER}" == "root" ]; then
	user_color="\e[0;38;05;124m"
else
	user_color="\e[m"
fi

workdir_color="\e[0;38;05;31m"
gitbranch_color="\e[0;38;05;144m"
branch='$(__git_ps1 " (%s)")'

export PS1="\t ${user_color}\u\e[m@\h ${workdir_color}\w\e[m${gitbranch_color}${branch}\e[m\n\\$ "
