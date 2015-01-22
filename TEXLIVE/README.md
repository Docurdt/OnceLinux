Texlive安装配置

# 下载镜像
推荐中科大镜像站：[下载镜像](http://mirrors.ustc.edu.cn/CTAN/systems/texlive/Images/)。

# 安装

安装`perl-tk`以便启动可视化安装界面：

`sudo apt-get install perl-tk`

装载安装介质:

`sudo mount -t  iso9660 -o loop texlive*.iso /mnt/`

开始安装：

`sudo ./install-tl --gui=perltk`

将create symlinks in system directories可后面的选项设置为Yes，开始安装。
