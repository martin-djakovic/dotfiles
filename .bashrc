#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='\[\e[38;2;37;37;37m\][ \[\e[1;30m\]\[\e[38;2;175;161;147m\]\u@\h \[\e[0;30m\]\[\e[38;2;37;37;37m\]] [ \[\e[38;2;246;241;234m\]\w \[\e[38;2;37;37;37m\]] -> \[\e[0m\]'
