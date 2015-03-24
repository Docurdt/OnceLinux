OnceCLI
==================
通过一系列终端应用的组合，搭建高效的CLI体验

# 主要依赖的终端应用
配置之前确保计算机中已安装下列软件的较新版本
* guake
* tmux

# 用到的工具
* powerline-shell:富信息化终端增强
* solarized:配色
* dircolors:增强`ls`等指令的彩色输出标记

# 快捷键指南
配置完成后的正常工作流程是在guake中启动tmux(在某些终端中需要`tmux -2`强制开启256色支持)。

* 横向分屏:Ctrl+A,-
* 纵向分屏:Ctrl+A,\
* 调整大小:Ctrl+A,[h,j,k,l]
* 关闭子窗口:Ctrl+A,q

更多快捷键组合可在`~/.tmux.conf`文件中查找。

# 安装
首先`git clone https://github.com/OnceMore2020/OnceLinux`后进入`OnceCLI`目录，然后执行`sh -x install.sh`或`./install.sh`。
