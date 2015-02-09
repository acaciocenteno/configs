# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

source .aliases
source .git-completion.bash
source .firstrun

# Less pager colors for man pages
# Source:
# http://unix.stackexchange.com/questions/119/colors-in-man-pages/147#147
export LESS_TERMCAP_mb=$(tput bold; tput setaf 2) # green
export LESS_TERMCAP_md=$(tput bold; tput setaf 24) # dark cyan
export LESS_TERMCAP_me=$(tput sgr0)
export LESS_TERMCAP_so=$(tput bold; tput setaf 7; tput setab 25) # white on blue
export LESS_TERMCAP_se=$(tput rmso; tput sgr0)
export LESS_TERMCAP_us=$(tput smul; tput bold; tput setaf 7) # white
export LESS_TERMCAP_ue=$(tput rmul; tput sgr0)
export LESS_TERMCAP_mr=$(tput rev)
export LESS_TERMCAP_mh=$(tput dim)
export LESS_TERMCAP_ZN=$(tput ssubm)
export LESS_TERMCAP_ZV=$(tput rsubm)
export LESS_TERMCAP_ZO=$(tput ssupm)
export LESS_TERMCAP_ZW=$(tput rsupm)

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
