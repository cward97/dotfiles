# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

# search through history
# source: https://wiki.archlinux.org/index.php/Bash#History_completion
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
