OnceVim-VIM配置文件
=======
# What's this?
集成化的VIM配置文件，主要针对html,css,python,markdown,C/C++等编程语言优化。

# 安装
`sh ./uninstall.sh`
`sh ./OnceVim.sh`

# 卸载
`sh ./uninstall.sh`

注意`<leader>`键修改为`,`了。

## 用到的主要插件：

### Misc
* vim-coloresque          : 颜色可视化,写CSS很方便
* vim-airline             : 漂亮的状态栏
* vim-css3-syntax         : 加强CSS语法高亮
* vim-haml                : Haml,Sass,SCSS的高亮
* HTML-AutoCloseTag       : 自动补全html标签，自动补全在敲入`>`后完成
* python.vim              : 加强Python语法高亮
* vim-markdown            : 加强Markdown语法高亮
* NerdTree                : 采用`,n`启动
* syntastic               : 语法检查
* gist-vim `              : Gist`试试；-）
* nerdcommenter           : `,cc`,`,cu` ;-)
* rainbow_parentheses.vim : 漂亮的彩虹括号
* molokai                 : 最爱的配色
* vim-indent-guides       : 可视化缩进层次
* signify:将文本的增加，修改和删除在行号前可视化标记(基于版本控制系统)
* vim-trailing-whitespace : 高亮行末多余空白字符，并可采用`:FixWhitespace`来批量删除
* vim-preview:支持markdown,html等文档的预览，使用`,P`开启预览。
* vim-easymotion:使用`,,w`,`,,b`快速移动



###  tabular
文本对齐神器，采用`:Tabularize /<char>`来根据`<char>`对齐代码，配置文件内定义了针对高频字符的快捷键，具体请参考配置文件中`Tabularize`段。

###  neocomplete
自动补全神器，采用了Neocomplete的Github源上的示例配置:[Neocomplete](https://github.com/Shougo/neocomplete.vim)

注意：需要开启`if_lua`模块且vim版本大于7.3.885，一般Ubuntu中安装了vim-gnome或vim-gtk后即满足条件。

### python-mode
"The plugin contains all you need to develop python applications in Vim!"

没有加入额外配置，这个插件的很多功能是off-the-shelf的，推荐将运行代码的快捷键修改为自己习惯的组合，配置方式见`:help python-mode`的2.7节。

# 致谢
spf13-vim
