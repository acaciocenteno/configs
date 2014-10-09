# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

source .aliases
source .git-completion.bash
source .firstrun

export PS1="\t \u@\h \e[0;38;05;31m\w\e[m\n\$ "
