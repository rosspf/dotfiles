#
# ~/.bash_functions
#

# man: override man command for colored output
function man() {
    env LESS_TERMCAP_mb=$'\E[01;31m' \
    LESS_TERMCAP_md=$'\E[01;38;5;74m' \
    LESS_TERMCAP_me=$'\E[0m' \
    LESS_TERMCAP_se=$'\E[0m' \
    LESS_TERMCAP_so=$'\E[48;5;74m\E[38;5;233m' \
    LESS_TERMCAP_ue=$'\E[0m' \
    LESS_TERMCAP_us=$'\E[04;38;5;146m' \
    man "$@"
}

# cl: combines cd and ls in one
function cl() {
    dir=$1
    if [[ -z "$dir" ]]; then
        dir=$HOME
    fi
    if [[ -d "$dir" ]]; then
        cd "$dir"
        ls
    else
        echo "bash: cl: '$dir': Directory not found"
    fi
}

# cleanpy: search and remove all compiled python files (.pyc)
function clearpy() {
    DEFAULT="."
    find ${1-$DEFAULT} -iname "*.pyc" -type f -print0 | xargs -0 rm
}

# findpy: search the contents of all python files
function findpy() {
    DEFAULT="."
    find ${2-$DEFAULT} -iname "*.py" -type f -print0 | xargs -0 grep -iH --color=always "$1"
}

# mkd: create a new directory and enter it
function mkd() {
	mkdir -p "$@" && cd "$@"
}

# repeat: execute a command n times, e.g. `repeat 5 uptime`
function repeat() {
    n="$1"
    shift
    while [ $(( n -= 1 )) -ge 0 ]
    do
        "$@"
    done
}

# fs: determine size of a file or total size of a directory
function fs() {
	if du -b /dev/null > /dev/null 2>&1; then
		local arg=-sbh
	else
		local arg=-sh
	fi
	if [[ -n "$@" ]]; then
		du $arg -- "$@"
	else
		du $arg .[^.]* *
	fi
}

# gz: get gzipped file size
function gz() {
	echo "orig size (bytes): "
	cat "$1" | wc -c
	echo "gzipped size (bytes): "
	gzip -c "$1" | wc -c
}

# digga: all the dig info
function digga() {
	dig +nocmd "$1" any +multiline +noall +answer
}

# extract: uncompress and expand most types compressed files
function extract () {
    if [ -f "$1" ] ; then
        case "$1" in
            *.tar.bz2)   tar xvjf "$1"    ;;
            *.tar.gz)    tar xvzf "$1"    ;;
            *.tar.xz)    tar xvJf "$1"    ;;
            *.bz2)       bunzip2 "$1"     ;;
            *.rar)       unrar x "$1"     ;;
            *.gz)        gunzip "$1"      ;;
            *.tar)       tar xvf "$1"     ;;
            *.tbz2)      tar xvjf "$1"    ;;
            *.tgz)       tar xvzf "$1"    ;;
            *.zip)       unzip "$1"       ;;
            *.Z)         uncompress "$1"  ;;
            *.7z)        7z x "$1"        ;;
            *.lzma)      lzma -dv "$1"    ;;
            *.xz)        xz -dv "$1"      ;;
            *)           echo "don't know how to extract '$1'..." ;;
        esac
    else
        echo "'$1' is not a valid file!"
    fi
}

# archive: create an archive (.tar.gz) from a directory
function archive () {
    if [ -d "$1" ] ; then
        tar cvzf "${1%%/}.tar.gz"  "${1%%/}/"
    else
        echo "'$1' is not a valid directory!"
    fi
}

# list-archive: list the contents of an archive or compressed file
function ls-archive () {
    if [ -f "$1" ] ; then
        case "$1" in
            *.tar.bz2) tar jtvf "$1"    ;;
            *.tar.gz)  tar ztvf "$1"    ;;
            *.tar)     tar tvf "$1"     ;;
            *)         echo "don't know how to list contents of '$1'..." ;;
        esac
    else
        echo "'$1' is not a valid file!"
    fi
}