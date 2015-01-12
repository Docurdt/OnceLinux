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
* vim-coloresque : 颜色可视化,写CSS很方便
* vim-airline : 漂亮的状态栏
* vim-css3-syntax : 加强CSS语法高亮
* vim-haml : Haml,Sass,SCSS的高亮
* HTML-AutoCloseTag : 自动补全html标签，自动补全在敲入`>`后完成
* python.vim : 加强Python语法高亮
 * NerdTree : 采用`,n`启动
 * syntastic : 语法检查
 * gist-vim `:Gist`试试；-）
 * nerdcommenter : `,cc`,`,cu` ;-)
 * tabular
 * python-mode
 * rainbow_parentheses.vim

###  neocomplete : 自动补全神器

### python-mode

### vim-easymotion
使用`,,w`,`,,b`快速移动

### vim-preview
支持markdown,html等文档的预览，使用`,P`开启预览。

注意：

* 默认浏览器设置为chrome
* `,P`中的P字母为大写

### vim-markdown

# 致谢
spf13-vim
