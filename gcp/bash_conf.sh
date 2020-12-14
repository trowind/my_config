# # alias vi='vim -u $HOME/jooyoung/.vimrc_jy316'
# alias lh='ls -lah'
# alias ll='ls -la'
# alias ..="cd .."
# alias ...="cd ../.."
# alias ....="cd ../../../"

# ## git
# source $CONFIG_HOME/.git-prompt.sh
# green=$(tput setaf 2)
# yellow=$(tput setaf 3)
# bold=$(tput bold)
# red=$(tput setaf 1)
# reset=$(tput sgr0)
# PS1='\[$green\]\u@\h\[$reset\]:\w\[$yellow\]$(__git_ps1)\[$reset\]\n\$ '
# alias g="git"
# alias ga="git add"
# alias gap="git add -p"
# alias gc="git commit"
# alias gs="git status"
# alias go="git checkout"
# alias gsl='git status | less -REX'
# alias gd="git diff --color"
# alias gl="git log  --graph --decorate --oneline --color --all"
# alias gls="git log --graph --decorate --color --name-status"
# alias gcred="git config --global credential.helper cache"

. ${JYLEE_CONF_DIR}/common_conf.sh

## set history
#HISTFILE="$HOME/jooyoung/.my_history"
export HISTTIMEFORMAT="%F %T "
export HISTCONTROL=ignoredups
export HISTIGNORE="pwd:ls:cd:lh"
export HISTSIZE=1000

export LESSCHARSET=UTF-8

git_config_me() {
	git config user.name "Joo-Young Lee"
	git config user.email "jooyoung@widerplanet.com"
}

alias tmuxjy='tmux -2 -u -L jy316 -f ${JYLEE_CONF_DIR}/gcp/tmux.conf'
