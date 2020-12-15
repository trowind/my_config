#!/bin/bash

. ${JYLEE_CONF_DIR}/common_conf.sh

export LESSCHARSET=UTF-8
alias vi='vim -u ${JYLEE_CONF_DIR}/.vimrc_jy316'

git_config_me() {
	git config user.name "Joo-Young Lee"
	git config user.email "jooyoung@widerplanet.com"
}

alias tmuxjy='tmux -2 -u -L jy316 -f ${JYLEE_CONF_DIR}/gcp/tmux.conf'
