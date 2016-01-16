# Shell Aliases and Functions.
alias l='ls -Fla --color=auto --group-directories-first --block-size='"\'1"
ll() { l --color=always "$@" | less; }
tla() { tree -FCa "$@" | less -r; }
hhtop() {
	mkdir -p ~/.config/htop
	cp /etc/htoprc.global ~/.config/htop/htoprc
	cp /etc/htoprc.global ~/.htoprc
	htop
}
mt()
{
	mkdir -p -- "$@" && cd -- "$@"
}
alias v='vim -p'
alias t='mt /tmp; l'
alias tt='mt /tmp/tmp; l'
alias ttr='cd -- "$(mktemp -d)"; l'
alias l='ls -lahtr --color=auto'
alias rss='newsbeuter -r -u .newsbeuter/urls_squeeze -C .newsbeuter/config'

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
