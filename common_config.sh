#!/bin/bash


#export CDPATH="$HOME/jooyoung"

source ${MY_CONF_DIR}/.git-prompt.sh

green=$(tput setaf 2)
yellow=$(tput setaf 3)
cyan=$(tput setaf 6)
bold=$(tput bold)
red=$(tput setaf 1)
reset=$(tput sgr0)

PS1='\[$cyan\]\D{%Y%m%d-%H:%M:%S} \[$green\]\u@\h\[$reset\]\w\[$yellow\]$(__git_ps1)\[$reset\]\n\$ '

## aliass
alias lh='ls -lah'
alias ll='ls -la'
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../../"

alias g="git"
alias ga="git add"
alias gap="git add -p"
alias gc="git commit"
alias gs="git status"
alias go="git checkout"
alias gsl='git status | less -REX'
alias gd="git diff --color"
alias gl="git log  --graph --decorate --oneline --color --all"
alias gls="git log --graph --decorate --color --name-status"
alias gcred="git config --global credential.helper cache"
