Vim profile
=======================
# 安装步骤
## 安装依赖包

###系统依赖

#### ubuntu
`sudo apt-get install ctags`

`sudo apt-get install build-essential cmake python-dev`

#### centos
`sudo yum install python-devel.x86_64`

`sudo yum groupinstall 'Development Tools'`

#### mac
`brew install ctags`

### 使用Python
`sudo pip install pyflakes`

`sudo pip install pylint`

`sudo pip install pep8`

### 使用Javascript
安装jshint和jslint,用于javascript语法检查
,需要nodejs支持,各个系统安装见文档 https://github.com/joyent/node/wiki/Installing-Node.js-via-package-manager

####ubuntu
`sudo apt-get install nodejs npm`

`sudo npm install -g jslint`

`sudo npm install jshint -g`

####mac
`brew install node`

`npm install jshint -g`

`npm install jslint -g`

## 安装

进入目录

`cd k-vim/`

执行安装

`sh -x install.sh`

## YCM无法编译时

编译自动补全YouCompleteMe


`cd ~/.vim/bundle/YouCompleteMe`

`./install.sh --clang-completer`

YCM[文档](https://github.com/Valloric/YouCompleteMe)

##安装/卸载/更新插件：

###安装新插件

1. vimrc.bundles中配置对应插件

`Bundle 'xxx/xxxx'`

2. 命令行模式，执行:

`:BundleInstall`

###更新插件(注意如果YCM更新, 可能需要重编译, 否则自动补全可能失效)

命令行模式，执行:

`:BundleUpdate`

###删除插件

1. vimrc.bundles中注释或删除对应插件bundle配置行(行首加一个双引号)
2. 命令行模式，执行: (会物理上删除插件文件)

`:BundleClean`

---------------------------------

---------------------------------

# 自定义快捷键

    注意, 以下 `,` 代表<leader>
    1. 可以自己修改vimrc中配置，决定是否开启鼠标

    set mouse-=a           " 鼠标暂不启用, 键盘党....
    set mouse=a            " 开启鼠标

    2. 退出vim后，内容显示在终端屏幕, 可以用于查看和复制, 如果不需要可以关掉
       好处：误删什么的，如果以前屏幕打开，可以找回....惨痛的经历

    set t_ti= t_te=

    3. 可以自己修改vimrc决定是否使用方向键进行上下左右移动，默认打开，可以注解
    hjkl  上下左右

    map <Left> <Nop>
    map <Right> <Nop>
    map <Up> <Nop>
    map <Down> <Nop>

    4. 上排F功能键

    F1 废弃这个键,防止调出系统帮助
    F2 set nu/nonu,行号开关，用于鼠标复制代码用
    F3 set list/nolist,显示可打印字符开关
    F4 set wrap/nowrap,换行开关
    F5 set paste/nopaste,粘贴模式paste_mode开关,用于有格式的代码粘贴
    F6 syntax on/off,语法开关，关闭语法可以加快大文件的展示

    F9 tagbar
    F10 运行当前python

    5. 分屏移动

    ctrl + j/k/h/l   进行上下左右窗口跳转,不需要ctrl+w+jkhl

    6. 搜索
    <space> 空格，进入搜索状态
    /       同上
    ,/      去除匹配高亮

    (交换了#/* 号键功能, 更符合直觉, 其实是离左手更近)
    #       正向查找光标下的词
    *       反向查找光标下的词

    优化搜索保证结果在屏幕中间

    7. tab操作(重点推)
    ctrl+t 新建一个tab

    (hjkl)
    ,th    切第1个tab
    ,tl    切最后一个tab
    ,tj    下一个tab
    ,tk    前一个tab

    ,tn    下一个tab(next)
    ,tp    前一个tab(previous)

    ,td    关闭tab
    ,te    tabedit
    ,tm    tabm

    ,1     切第1个tab
    ,2     切第2个tab
    ...
    ,9     切第9个tab
    ,0     切最后一个tab

    ctrl+l 最近使用两个tab之间切换

    8. buffer操作(不建议, 建议使用ctrlspace插件来操作)
    [b    前一个buffer
    ]b    后一个buffer
    <-    前一个buffer
    ->    后一个buffer


    9. 按键修改
    Y         =y$   复制到行尾
    U         =Ctrl-r
    ,sa       select all,全选
    ,v        选中段落
    kj        代替<Esc>，不用到角落去按esc了

    ,q     :q，退出vim

    ctrl+n    相对/绝对行号切换
    <enter>   normal模式下回车选中当前项


    更多优化:
        1. j/k 对于换行展示移动更友好
        2. HL 修改成 ^$, 更方便在同行移动
        3. ; 修改成 : ，一键进入命令行模式，不需要按shift
        4. 命令行模式 ctrl+a/e 到开始结尾
        5. <和> 代码缩进后自动再次选中, 方便多次缩进, esc退出
        6. 对py文件，保存自动去行尾空白，打开自动加行首代码
        7. 交换#/*号功能,#号为正向查找,*反向
        8. `w!!`强制保存, 即使readonly
        9. 去掉错误输入提示
        10. 交换`和', '能跳转到准确行列位置
        11. python/ruby 等, 保存时自动去行尾空白
        12. 统一所有分屏打开的操作位v/s[nerdtree/ctrlspace] (特殊ctrlp ctrl+v/x)

    废弃:
    t         新起一行，下面，不进入插入模式
    T         新起一行，上面


---------------------------------

---------------------------------

# 插件部分

> 基础

1. ####插件管理 [gmarik/vundle](https://github.com/gmarik/vundle)

    必装,用于管理所有插件
    命令行模式下管理命令:

        :BundleInstall     install
        :BundleInstall!    update
        :BundleClean       remove plugin not in list

1. ####多语言语法检查 [scrooloose/syntastic](https://github.com/scrooloose/syntastic)

    建议安装，静态语法及风格检查,支持多种语言

    修改了下标记一列的背景色,原有的背景色在solarized下太难看了…..

    演示

    ![syntastic](https://github.com/wklken/gallery/blob/master/vim/syntastic.png?raw=true)

> 自动补全

1. ####代码自动补全 [Valloric/YouCompleteMe](https://github.com/Valloric/YouCompleteMe)

    必装，强烈推荐(YCM是我目前用到的最好的自动补全插件)

    这个插件包含了以下几个插件功能,所以不需要装下面:

        clang_complete
        AutoComplPop
        Supertab
        neocomplcache
        jedi(对python的补全)

    敲两个字符后弹出提示, 支持各语言标准库补全

    快捷键:

        ctrl+j 选择下一个补全
        ctrl+k 选择上一个补全

        ctrl+n 选择下一个补全
        ctrl+p 选择上一个补全
        回车    选中
        ,jd  跳转到函数定义, 分屏打开一个buffer(非常有用!!!!!!!!!)
        ,gd  跳到声明位置, 仅 filetypes: c, cpp, objc, objcpp, python 有效(比较少用)

    演示(官方截图)

    ![ycm](https://camo.githubusercontent.com/1f3f922431d5363224b20e99467ff28b04e810e2/687474703a2f2f692e696d6775722e636f6d2f304f50346f6f642e676966)



2. ####代码片段快速插入 [SirVer/ultisnips](https://github.com/SirVer/ultisnips) +[honza/vim-snippets](https://github.com/honza/vim-snippets)

    必装，效率杀手锏，快速插入自定义的代码片段, 高效必备

    YCM 自动补全会弹提示

        ctrl+j 上一个
        ctrl+k 下一个

        ctrl+n 上一个
        ctrl+p 下一个
        <tab>  使用片段 -> expand to codes
        ,us    编辑对应文件类型的代码片段

    演示

    ![ultisnips](https://github.com/wklken/gallery/blob/master/vim/utilsnips.gif?raw=true)


4. ####引号配对补全 [Raimondi/delimitMate](https://github.com/Raimondi/delimitMate)

    必装，输入引号,括号时,自动补全

    对python的docstring 三引号做了处理(只处理""", '''暂时没配，可以自己加)

    演示

    ![delimitmate](https://github.com/wklken/gallery/blob/master/vim/delimate.gif?raw=true)

    附:同类插件 [kana/vim-smartinput](https://github.com/kana/vim-smartinput)


5. ####html/xml标签配对补全 [docunext/closetag.vim](https://github.com/docunext/closetag.vim)


> 快速编码

2. ####快速注释 [scrooloose/nerdcommenter](https://github.com/scrooloose/nerdcommenter)

    必装，另一个大大提升效率的地方，快速批量加减注释[会自动补一个空格]

        [d] shift+v+方向键选中(默认当前行)
            -> ,cc      加上注释
            -> ,cu      解开注释
            -> ,c<space> 加上/解开注释
            -> ,cy      先复制再注解, p可以粘贴未注释前的代码

    演示

    ![nerdcommenter](https://github.com/wklken/gallery/blob/master/vim/nerdcomment.gif?raw=true)


    附:注释还有其他两种插件可选[tcomment](https://github.com/tomtom/tcomment_vim) 和[tpope/vim-commentary](https://github.com/tpope/vim-commentary)


3. ####快速编辑 [tpope/vim-surround](https://github.com/tpope/vim-surround) +[tpope/vim-repeat](https://github.com/tpope/vim-repeat)

    必装，很给力的功能，快速给词加环绕符号,例如引号, 注意(括号, 左括号会加空格, 右括号不会)

    repeat进行增强,'.'可以重复使用命令

        [d]
        cs"'
        "Hello world!" -> 'Hello world!'

        ds"
        "Hello world!" -> Hello world!

        ysiw"
        Hello -> "Hello"

        yss"
        Hello world -> "Hello world"

        cst"
        <a>abc</a>  -> "abc"

        ys$" 当前到行尾, 引号引住



    演示

    ![surround](https://github.com/wklken/gallery/blob/master/vim/surround.gif?raw=true)


3. ####去行尾空格 [bronson/vim-trailing-whitespace](https://github.com/bronson/vim-trailing-whitespace)

    将代码行最后无效的空格标红

        [sd] ,空格    去掉当前行末尾空格

4. ####赋值语句代码对齐 [junegunn/vim-easy-align](https://github.com/junegunn/vim-easy-align)

    将代码,或者json等, 根据表达式符号进行对齐,具体见例子 [examples](https://github.com/junegunn/vim-easy-align/blob/master/EXAMPLES.md)

        [sd]  可以选中多行,不选中默认操作当前行
            ,a= 对齐等号表达
            ,a: 对齐冒号表达式(json/map等)
            ,a<space>  首个空格对齐
            ,a2<space> 第二个空格对齐
            ,a*<space> 所有空格依次对齐


    同类插件 [tabular](https://github.com/godlygeek/tabular)

> 快速移动

1. ####位置跳转[Lokaltog/vim-easymotion](https://github.com/Lokaltog/vim-easymotion)

    必装，效率提升杀手锏，跳转到光标后任意位置

    easymothion主要用于快速查找跳转, 今天看了支持jk快速跳转(支持多字母搜索跳转不过我认为太重了)

    配置(我的leader键配置 let g:mapleader = ',')

        ,, + w  跳转
        ,, + fe  查找'e',快速跳转定位到某个字符位置
        ,,j      快速决定移动到下面哪行(比用行号/j移动快)
        ,,k      快速移动到上面哪行
        ,,l      本行, 向后快速移动
        ,,h      本行, 向前快速移动

    演示

    ![easy_motion](https://github.com/wklken/gallery/blob/master/vim/easymotion.gif?raw=true)

2. ####符号匹配跳转[vim-scripts/matchit.zip](https://github.com/vim-scripts/matchit.zip)

    必装

    % 匹配成对的标签，跳转

3. ####mark跳转 [kshenoy/vim-signature](https://github.com/kshenoy/vim-signature)

    必装, 快速打标签, 随时跳回标签位置(修复python自动去除空白函数和该插件冲突的问题)


        m[a-zA-Z]   打标签
        '[a-zA-Z]   跳转到标签位置
        '. 最后一次变更的地方
        '' 跳回来的地方

        m<space>    去除所有标签

> 快速选中

6. ####区块伸缩 [terryma/vim-expand-region](https://github.com/terryma/vim-expand-region)

    视图模式下可伸缩选中部分，用于快速选中某些块

        [sd]
        + 增加选中范围(+/=按键)
        _ 减少选中范围(_/-按键)

    演示（直接取链到其github图)

    ![expand-region](https://raw.github.com/terryma/vim-expand-region/master/expand-region.gif)


7. ####多光标选中编辑 [vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors)

    多光标批量操作

        [sd]
        ctrl + m 开始选择
        ctrl + p 向上取消
        ctrl + x 跳过
        esc   退出

    演示(官方演示图)

    ![multiple-cursors](https://raw.github.com/terryma/vim-multiple-cursors/master/assets/example1.gif)

> 文本对象扩展

1. 自定义文本对象 [kana/vim-textobj-user.git](https://github.com/kana/vim-textobj-user.git)

   后面几个扩展对象的依赖

   更多其他扩展,见 [wiki](https://github.com/kana/vim-textobj-user/wiki)

   PS: 特希望有一个扩展支持 '' "" [] {} ()

2. 行文本对象 [kana/vim-textobj-line](https://github.com/kana/vim-textobj-line)

   增加文本对象: l

        dal
        yal
        cil

3. 缩进文本对象 [kana/vim-textobj-indent.git](https://github.com/kana/vim-textobj-indent.git)

   增加文本对象: i

   相同缩进属于同一块,对python很有用

        dai
        yai
        cii

4. 文件文本对象 [kana/vim-textobj-entire.git](https://github.com/kana/vim-textobj-entire.git)

   增加文本对象: e

        dae
        yae
        cie



> 功能相关

1. ####搜索 [kien/ctrlp.vim](https://github.com/kien/ctrlp.vim)

    文件搜索,ack/Command-T需要依赖于外部包,不喜欢有太多依赖的,除非十分强大, 具体 [文档](http://kien.github.io/ctrlp.vim/)

        [sd] ,p  打开ctrlp搜索
        [sd] ,f  相当于mru功能，show recently opened files

        ctrl + j/k 进行上下移动
        ctrl + x/v 分屏打开该文件 [重要**]
        ctrl + t   在新tab中打开该文件

    演示

    ![ctrip](https://github.com/wklken/gallery/blob/master/vim/ctrlp.gif?raw=true)

    插件:
    当前文件快速函数搜索:[tacahiroy/ctrlp-funky](https://github.com/tacahiroy/ctrlp-funky)

    解决问题:使用tagbar当函数比较多的时候,移动耗时较长,使用快速搜索快很多

        ,fu   进入当前文件函数搜索
        ,fU   搜索光标下单词对应函数



2. ####git 常用操作 [tpope/vim-fugitive](https://github.com/tpope/vim-fugitive)

    git插件, 编辑文件时进行一些diff操作,例如diff

    不是很习惯,所以用的次数太少,目前和现有配置快捷键有冲突,尚未解决

        [sd]
        ,ge   = git diff edit[gd被ycm占用了]

    没有配置其他快捷键,可以参照github,自己增加修改映射

2. ####git状态 [airblade/vim-gitgutter](https://github.com/airblade/vim-gitgutter)

    git,在同一个文件内,通过标记和高亮,显示本次文件变更点

        [sd]
        ,gs   = show diff status [gd被ycm占用了]

    ![gitgutter](https://raw.githubusercontent.com/airblade/vim-gitgutter/master/screenshot.png)

3. ####文件时光机 [sjl/gundo.vim](https://github.com/sjl/gundo.vim)

    编辑文件时光机

        [sd] ,h  查看文件编辑历史

    附:同类插件 [mbbill/undotree](https://github.com/mbbill/undotree)

> 显示增强


1. ####状态栏增强 [bling/vim-airline](https://github.com/bling/vim-airline)

    之前使用powerline, 用airline替换, powerline的配置注释,需要的自行解开

    演示

    ![airline](https://raw.githubusercontent.com/wiki/bling/vim-airline/screenshots/demo.gif)

2. ####括号上色高亮 [kien/rainbow_parentheses.vim](https://github.com/kien/rainbow_parentheses.vim)

    演示

    ![rainbow](https://github.com/wklken/gallery/blob/master/vim/rainbow_parentheses.png?raw=true)

> 显示增强-主题

4. ####[altercation/vim-colors-solarized](https://github.com/altercation/vim-colors-solarized)

   经典主题,目前我使用的,看起来舒服

5. ####[tomasr/molokai](https://github.com/tomasr/molokai)

   用sublime text2的同学应该很熟悉, 另一个主题,可选,偶尔换换味道

默认值提供solarized和molokai主题，其他主题需自行配置安装

> 快速导航

1. ####目录树 [scrooloose/nerdtree](https://github.com/scrooloose/nerdtree)

    必装,开启目录树导航

        [sd]
            ,n  打开 关闭树形目录结构

            在nerdtree窗口常用操作：(小写当前，大写root)
            x.......收起当前目录树
            X.......递归收起当前目录树
            r.......刷新当前目录
            R.......刷新根目录树

            p.......跳到当前节点的父节点
            P.......跳到root节点
            k/j.....上下移动
            K.......到同目录第一个节点
            J.......最后一个节点

     
            o.......Open files, directories and bookmarks

            s.......split上下分屏[原来是i, 改键]
            v.......vsplit左右分屏[原来是s, 改键]

            c.......将当前目录设为根节点
            q.......关闭

    nerdtree配合tab非常赞, i/s 可以在右侧分屏打开

    演示

    ![thenerdtree](https://github.com/wklken/gallery/blob/master/vim/thenerdtree.gif?raw=true)

2. ####目录树tab增强 [jistr/vim-nerdtree-tabs](https://github.com/jistr/vim-nerdtree-tabs)

    选装, 多个tab时, 保持nerdtree一致

    Just one NERDTree

3. ####tab/buffer导航增强 [vim-ctrlspace](https://github.com/szw/vim-ctrlspace)

    必装, 多buffer/多tab, 方便的查看列表, 操作, 切换, 与nerdtree/tabs完美配合, 很强大, 目前只使用基础功能, 后续根据需要再完善

    注意: 有些人的ctrl+space被占用的, 配一个leader快捷键(下面是默认配置)

          let g:ctrlspace_default_mapping_key="<C-Space>"

    (同时可以看看文档前面部分针对tab的快捷键)

          ctrl+<space> 得到当前tab的buffer列表
          j/k     上下移动
          回车     跳转到
          v/V     vsp分屏打开, v会进入对应文件, V会保留在ctrlspace区域
          s/S     sp分屏打开

          l       展示/关闭tab列表
              j/k 或 [/] 上下移动
              =   给tab命名
              -   Move the current tab to the left (decrease its number)
              +   Move the current tab to the right (increase its number)
              Backspace Go back to Buffer List

          L   Jump to Tab List in Search Mode

          esc/q   close the list

    演示

    ![ctrlspace](https://github.com/wklken/gallery/blob/master/vim/ctrlspace.gif?raw=true)

    官方视频

<p align="center">
<a href="https://www.youtube.com/watch?v=U1hbGJm3J0g">
<img alt="Vim-CtrlSpace 4.0 Demo"
src="https://raw.github.com/szw/vim-ctrlspace/master/gfx/screen_small.png" />
</a>
</p>




4. ####Tag [majutsushi/tagbar](https://github.com/majutsushi/tagbar)

    必装,标签导航,纬度和taglist不同, taglist的替代者

    ![tagbar](https://github.com/wklken/gallery/blob/master/vim/tagbar.gif?raw=true)
