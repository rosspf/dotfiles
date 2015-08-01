#
# ~/.bash_profile
#

for file in ~/.bash_{aliases,exports,functions,prompt,extra,local}; do
	[ -r "$file" ] && . "$file"
done
unset file

shopt -s nocaseglob
shopt -s histappend
shopt -s cdspell
shopt -s checkwinsize

if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi