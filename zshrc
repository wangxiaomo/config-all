# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="bira"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git cpanm django github perl pip python redis-cli svn taskwarrior vi-mode)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
alias vi='vim'
alias grep='grep -i'
alias ls='ls -F --color'
alias ll='ls -lh'
alias as='aptitude search'
alias ai='sudo aptitude install'
alias vpn='sudo /etc/init.d/openvpn start'
alias python='python2.7'
alias ipython='ipython2.7'
alias scrot="scrot -s '/home/xiaomo/images/%Y-%m-%d_%H:%M:%S.png'"
alias tmux="tmux attach || tmux"

export DISPLAY=:0.0
export VISUAL='vim'
export EDITOR='vim'

#bindkey -v
bindkey -e

# Prompt
PROMPT="${current_dir} ${git_branch} (%m) %B%%%b "

unsetopt correct_all

# doubandev2
alias log='svn log -v --stop-on-copy http://svn.douban.com/svn/shire/branches/qingfeng/parttime/wj/'
