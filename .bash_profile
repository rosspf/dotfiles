#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc
[[ -f ~/.bashrc_aliases ]] && . ~/.bashrc_aliases

if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi