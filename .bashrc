#
# ~/.bashrc
#

export PATH=$PATH:~/bin/

export PATH=$PATH:~/.local/bin/

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
[[ $- != *i* ]] && return
MOR='\[\033[0;35m\]'
CYAN='\[\033[0;36m\]'
RESET='\[\033[0m\]'

teatimer() {
         sleep $1;
         mplayer "$HOME/music/alarm.mp3>"  & notify-send '!! Coffee Time - wake up !!';
         exit
}


alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1="${CYAN}\$(parse_git_branch) ${MOR}\u${CYAN} -> ${MOR}\W ${CYAN}$ ${RESET} "
# Bash-completion scriptini yükle
if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
fi


