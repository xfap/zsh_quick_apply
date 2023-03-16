# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.

source ~/antigen.zsh

# 

antigen init ~/.antigenrc

# alias install='sudo apt-get install'        //安装软件
# alias update='sudo apt-get update'       //更新缓存
# alias upgrade='sudo apt-get upgrade'     //更新
# alias dist-upgrade='sudo apt-get dist-upgrade'      //解决相依性更新
# [[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && . ~/.autojump/etc/profile.d/autojump.sh


# No shared history
# docker 开启历史共享
# unsetopt share_history

alias bb='bazel build'
alias br='bazel run'

# 鼠标滚轮 作用 历史
# bindkey "^[[A" history-search-backward
# bindkey "^[[B" history-search-forward
# 用于命令行翻滚，更好用
bindkey "^[[A" forward-word  # 方向上键
bindkey "^[[B" backward-word  # 方向下键

autoload -Uz history-beginning-search-menu
zle -N history-beginning-search-menu
bindkey '^X^X' history-beginning-search-menu

source ~/.bash_profile
