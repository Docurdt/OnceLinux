OnceCLI
==================
通过一系列终端应用的组合，搭建高效的CLI体验
![OnceCLI](https://github.com/OnceMore2020/OnceLinux/raw/master/OnceCLI/OnceCLI.png)


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
首先`git clone https://github.com/OnceMore2020/OnceLinux`，进入FONTS目录执行

`sh -x install.sh`或`./install.sh`

安装需要用到的字体。

然后后进入`OnceCLI`目录，执行

`sh -x install.sh`或`./install.sh`

完成安装。

**注意(字体安装):执行脚本后同样会安装一些Windows常用字体(simsun,sumhei,simkai,MSyahei,...),Adobe字体(Surce-code-pro,source-sans-han,Adobe-song,kai,hei...)，字体安装脚本的初衷是将LaTeX写作需要用到的中文字体集成化安装，后期才加进去了Powerline fonts的安装。**

**注意（~/.bashrc)：该安装脚本会增加~/.bashrc的内容，建议在安装前在~/.bashrc文本末尾加一个标记，如一行===，这样方便在解除安装时定位需要删除的内容**

# 说明
主要用到的三个repo均设置为隐藏文件夹，同时保留了原repo的README,可进入相应目录进行查看。
