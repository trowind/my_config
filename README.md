# Setup

.bash\_profile에 다음을 추가


```
## Personal conf dir
export JYLEE_CONF_DIR="/home/sysoper/jooyoung/my_config"

# tmux
alias tmuxjy='tmux -2 -u -L jy316 -f $JYLEE_CONF_DIR/tmux.conf'
alias tmuxjy_new="tmuxjy new -s jooyoung"
```

