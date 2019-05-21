#!/bin/bash

#alias vi='vim -u $HOME/jooyoung/.vimrc_jy316'
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

#export LANG=ko_kr.UTF-8
#export LC_ALL=ko_KR.utf-8
#export LANGUAGE="ko_KR;ko;en_GB"
#export LESSCHARSET=UTF-8

#alias activate=". ${HOME}/jooyoung/python2.7/bin/activate"

. ${HOME}/z.sh
