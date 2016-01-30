# Shell Aliases and Functions.

alias v='vim -p'
alias t='mt /tmp; l'
alias tt='mt /tmp/tmp; l'
alias ttr='cd -- "$(mktemp -d)"; l'
alias l='ls -lahtr --color=auto'
alias ls='lsi --color=auto'

# Environment (Shell).
export PS1='\[\e[1;32m\]\u@\H:\[\e[m\] \[\e[1;37m\]\w\[\e[m\]\n\[\e[1;33m\]\[\e[0;33m\]\[\e[1;31m\]\$\[\e[m\] '

export HISTSIZE=50000
export SAVEHIST=50000
export HISTCONTROL=ignoredups
shopt -s globstar
shopt -s checkjobs
shopt -s checkwinsize
shopt -s histreedit

# Environment (other programs).
export LESS="-iRS -# 2"
export EDITOR=vim
export VISUAL=vim


eval `dircolors ~/.dircolors-solarized/dircolors.256dark`
