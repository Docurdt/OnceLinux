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
ln -sf $cwd/.dircolors.256dark ~/.dircolors

echo "增加一些配置内容到~/.bashrc"
cat $cwd/.bashrc.plus >> ~/.bashrc

source ~/.bashrc

eval `dircolors ~/.dircolors`
exit 0
