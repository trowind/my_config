#!/bin/bash

. ${JYLEE_CONF_DIR}/common_conf.sh

alias tmuxjy='tmux -2 -u -L jy316 -f ${JYLEE_CONF_DIR}/gcp/tmux.conf'
alias tmuxjy_new="tmuxjy new -s jooyoung"
alias vi='vim -u ${JYLEE_CONF_DIR}/gcp/vimrc.vim'

git_config_me() {
	git config user.name "Joo-Young Lee"
	git config user.email "jooyoung@widerplanet.com"
}

export LESSCHARSET=UTF-8
