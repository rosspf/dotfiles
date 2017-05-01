#
# ~/.profile
#

export SHELL=/usr/bin/bash

if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi
	
[ -n "/usr/bin/bash" -a -f ~/.bashrc ] && . ~/.bashrc

#exec /usr/bin/bash --login
