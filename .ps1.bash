if [[ -f ${HOME}/.git-prompt.sh ]]; then
    source ${HOME}/.git-prompt.sh
elif [[ -f ${HOME}/.git-completion.bash ]]; then
    source ${HOME}/.git-completion.bash
else
    return
fi

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

workdir_color="\e[1;38;05;31m"
gitbranch_color="\e[0;38;05;144m"
branch='$(__git_ps1 " (%s)")'

status() {
    RC=$?
    [[ ${RC} != 0 ]] && echo -ne "\e[0;38;05;124m ${RC}\e[m"
}

user_and_host_when_not_in_tmux() {
    if [[ -n ${TMUX} ]]; then
        PS1_HOSTNAME=
    else
        PS1_HOSTNAME="${user_color}\u\e[m@\h "
    fi
}

user_and_host_when_not_in_tmux

export PS1_HOSTDIR="${workdir_color}\w\e[m"
export PS1_GIT_BRANCH="${gitbranch_color}${branch}\e[m"
export PS1="${PS1_HOSTNAME}${PS1_HOSTDIR}${PS1_GIT_BRANCH}\$(status)\n\\$ "
