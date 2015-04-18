#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

HISTCONTROL=ignoreboth
shopt -s histappend
shopt -s checkwinsize

PS1='\[\e[0;36m\]\u@\h\[\e[0;37m\][\[\e[01;32m\]\w\[\e[0;37m\]] '
PS2='> '
PS3='> '
PS4='+ '

# Set root's prompt color to red
if [[ $EUID -eq 0 ]]; then
    PS1='\[\e[0;31m\]\u@\h\[\e[0;37m\][\[\e[01;32m\]\w\[\e[0;37m\]] '
fi

case ${TERM} in
  xterm*|rxvt*|Eterm|aterm|kterm|gnome*)
    PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033]0;%s@%s:%s\007" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'

    ;;
  screen)
    PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033_%s@%s:%s\033\\" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'
    ;;
esac

[ -r /usr/share/bash-completion/bash_completion   ] && . /usr/share/bash-completion/bash_completion
