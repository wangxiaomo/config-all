# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
export LANG='zh_CN.UTF-8'
export LANGUAGE='zh_CN.UTF-8'
export LC_ALL='zh_CN.UTF-8'
export XMODIFIERS="@im=ibus"
export GTK_IM_MODULE=ibus
export QT_IM_MODULE=ibus

alias ls='ls -F --color'
alias vi='vim'
alias grep='grep --color -i'
alias scrot="scrot -s '/home/xiaomo/images/%Y-%m-%d_%H:%M:%S.png'"

export PS1='\n\n\e[36;40m\u\e[0m \e[34;40m@\e[0m \e[33;40m\h\e[0m in \w  \t\n\$-> '
export EDITOR='vim'
export VISUAL='vim'
export DISPLAY=:0.1
