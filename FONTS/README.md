字体安装配置

创建文件夹在用户目录下，方便管理：

`mkdir ~/.fonts`

拷贝字体到创建的文件夹：

`cp * -r ~/.fonts/`

获取字体权限(可选)：

`sudo chmod a+x ~/.fonts`

创建索引数据：

`cd ~/.fonts`

`mkfontscale`

`mkfontdir`

更新字体库：

`fc-cache -vf`
