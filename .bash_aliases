#
# ~/.bash_aliases
#

# Modified commands for QOL
alias cd..='cd ..'
alias ls='ls -hF --color=auto'
alias lr='ls -R'
alias ll='ls -l'
alias la='ll -A'
alias lx='ll -BX'
alias lz='ll -rS'
alias lt='ll -rt'
alias lm='la | more'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias vi='vim'
alias diff='colordiff'
alias grep='grep --color=auto'
alias more='less'
alias df='df -h'
alias du='du -c -h'
alias mkdir='mkdir -p -v'
alias nano='nano -w'
alias ping='ping -c 5'
alias dmesg='dmesg -HL'

# Privileged access
if [ $UID -ne 0 ]; then
	alias sudo='sudo '
	alias scat='sudo cat'
	alias svim='sudoedit'
	alias root='sudo -i'
	alias reboot='sudo systemctl reboot'
	alias poweroff='sudo systemctl poweroff'
	alias update='sudo pacman -Su'
	alias netctl='sudo netctl'
fi

# Safety features
alias rm='rm -I'
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'
alias cls=' echo -ne "\033c"'