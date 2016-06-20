#
# ~/.bashrc
#

[[ $- == *i* ]] || return 0

for file in ~/.bash_{aliases,exports,functions,prompt,local}; do
	[ -r "$file" ] && . "$file"
done
unset file

shopt -s nocaseglob
shopt -s histappend
shopt -s cdspell
shopt -s checkwinsize