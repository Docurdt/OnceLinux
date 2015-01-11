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

# XeCJK字体

以添加Windows系统字体为例，先准备好需要安装的字体。

创建文件夹在用户目录下，方便管理：

`mkdir ~/.fonts/winfonts`

拷贝字体到创建的文件夹：

`cp *.tt? ~/.fonts/winfonts`

获取字体权限(可选)：

`sudo chmod a+x ~/.fonts/winfonts`

创建索引数据：

`cd ~/.fonts/winfonts`

`mkfontscale`

`mkfontdir`

更新字体库：

`fc-cache -vf`
