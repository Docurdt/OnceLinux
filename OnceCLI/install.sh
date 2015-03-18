#!/bin/bash
# install config file

cwd=$(pwd)

echo "安装tmux配置文件中..."
echo "创建配置文件软链接到$HOME/.tmux.conf"
ln -sf $cwd/.tmuxen/_tmux.conf $HOME/.tmux.conf

echo "安装Powerline-shell配置文件中..."
echo "创建配置文件软链接到$HOME/.powerline-shell.py"
ln -sf $cwd/.powerline-shell/powerline-shell.py $HOME/.powerline-shell.py

echo "安装guake-solarized配置文件中..."
sh -x ./.guake-solarized/set_dark.sh

echo "安装dircolors-solarized配置文件中..."
cp ./.dircolors.256dark ~/.dircolors
cat >>  ~/.bashrc <<ALLEND
#dircolors
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
    alias tree='tree -C'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
ALLEND

source ~/.bashrc

eval `dircolors ~/.dircolors`
exit 0
