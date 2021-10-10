case $- in
   *i*) ;;
     *) return;;
esac

# don't put duplicate lines or lines starting with space in the history
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

HISTSIZE=1000
HISTFILESIZE=2000

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and sub-directories.
# shopt -s globstar

# Color the out of commands such as ls
export CLICOLOR=1

# Make VSCode the default text editor
export EDITOR="code --wait"

# Terminal colors. See list of 256 colors at https://jonasjacek.github.io/colors/
RESTORE=$(tput sgr0)
CYAN=$(tput setaf 43)
YELLOW=$(tput setaf 226)

# Functions
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d'
}

# Set prompt variable
export PS1="\[$CYAN\]\w\[$RESTORE\]\[$YELLOW\] \$(parse_git_branch)\[$RESTORE\]\\n$ "

# load bash aliases
[ -r ~/.bash_aliases ] && . ~/.bash_aliases

# Homebrew env vars
eval "$(/opt/homebrew/bin/brew shellenv)"

# pyenv env vars
eval "$(pyenv init -)"
