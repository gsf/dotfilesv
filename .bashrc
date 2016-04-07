# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# Short prompt
PS1='\$ '

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=5000
HISTFILESIZE=10000

# Don't put duplicate lines or lines starting with space in the history
# See bash(1) for more options
HISTCONTROL=ignoreboth

# Append to the history file, don't overwrite it
shopt -s histappend

# Check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories
shopt -s globstar

# Aliases
alias ll='ls -alF'
alias la='ls -AF'
alias l='ls -F'

# Enable bash completion in interactive shells
if [ -f /etc/bash_completion ] && ! shopt -oq posix
  then . /etc/bash_completion
fi

# Set the terminal title to user@host/dir
case "$TERM" in
  xterm*|rxvt*|st*)
    PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}${PWD}\007"'
    ;;
  screen*)
    PROMPT_COMMAND='echo -ne "\033_${USER}@${HOSTNAME}${PWD}\033\\"'
    ;;
  *)
    ;;
esac

# Night of the living ed
export EDITOR='rlfe -h ~/.rlfe_history ed -l'
alias e=$EDITOR

# http://unix.stackexchange.com/questions/1045/getting-256-colors-to-work-in-tmux
export TERM=xterm-256color

# .env loading in the shell
# Inspired by http://stackoverflow.com/a/21831665/589391 and
# https://github.com/gchaincl/dotenv.sh, then re-inspired
# by the "set -a" trick from timwis
dotenv () {
  set -a
  [ -f .env ] && . .env
  set +a
}

# Run dotenv on login
dotenv

# Run dotenv on every new directory
cd () {
  builtin cd $@
  dotenv
}
