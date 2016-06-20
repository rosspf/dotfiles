#
# ~/.profile
#

if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi
	
[ -n "$BASH" -a -f ~/.bashrc ] && . ~/.bashrc