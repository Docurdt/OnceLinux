Texlive安装配置

# 下载镜像
[下载镜像](http://mirrors.ustc.edu.cn/CTAN/systems/texlive/Images/)

# 安装
`sudo apt-get install perl-tk`
`sudo mount -t  iso9660 -o loop texlive*.iso /mnt/`
`sudo ./install-tl --gui=perltk`

将create symlinks in system directories可后面的选项设置为Yes，开始安装。

# XeCJK字体
`mkdir ~/.fonts/winfonts`
`cp *.tt? ~/.fonts/winfonts`
`sudo chmod a+x ~/.fonts/winfonts`
`cd ~/.fonts/winfonts`
`mkfontscale`
`mkfontdir`
`fc-cache -vf`
