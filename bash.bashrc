# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
export LANG='zh_CN.UTF-8'
export LANGUAGE='zh_CN.UTF-8'
export LC_ALL='zh_CN.UTF-8'
export XMODIFIERS="@im=fcitx"

alias ls='ls -F --color'
#TODO:alias scrot
