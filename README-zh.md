# [我的Vim配置](http://tao12345666333.github.com/vim)
[![Build Status](https://travis-ci.org/tao12345666333/vim.png)](https://travis-ci.org/tao12345666333/vim)

## 截图

![screenshot.png](screenshot.png)

## 安装
(你需要一个有Python支持的Vim版本. 请使用 `vim --version | grep +python` 来检查)

* **依赖**(Debian/Ubuntu 平台)

    `sudo apt-get remove python`

    `sudo apt-get install python vim exuberant-ctags git`

    `sudo pip install dbgp vim-debug pep8 flake8 pyflakes isort`

* **下载vimrc 文件到用户主目录**

    `wget https://raw.githubusercontent.com/tao12345666333/vim/master/vimrc -O $HOME/.vimrc`

* **打开 Vim**

    打开Vim, 它将会自动安装插件. 请耐心等待它完成. 或者你可以使用下面的命令来自行安装.

    `vim -E -u $HOME/.vimrc +qall`

* **享受你的Vim并个性化它吧!**

## 支持特性

### 插件管理（Vundle）

在这份配置中，使用了[**Vundle**](https://github.com/VundleVim/Vundle.vim)作为插件管理器. Vundle会自动接管 `.vim` 文件夹，所有配置好的插件将默认下载至`~/.vim/bundle/`， 在使用之前请确保`.vim`文件夹干净. Vundle的插件安装需要触发 `git clone` 操作，搜索需要 `curl` 支持.

#### 配置(截取了部分)

```vim
" let Vundle manage Vundle
Bundle 'gmarik/vundle'

" ============================================================================
" Active plugins
" You can disable or add new ones here:

" Plugins from github repos:

" Python and PHP Debugger
Bundle 'fisadev/vim-debug.vim'
" Better file browser
Bundle 'scrooloose/nerdtree'
" Code commenter
Bundle 'scrooloose/nerdcommenter'
" Class/module browser
Bundle 'majutsushi/tagbar'
" Code and files fuzzy finder
Bundle 'kien/ctrlp.vim'
" Extension to ctrlp, for fuzzy command finder
Bundle 'fisadev/vim-ctrlp-cmdpalette'
" Zen coding
Bundle 'mattn/emmet-vim'
" Git integration
Bundle 'motemen/git-vim'
" Tab list panel
Bundle 'kien/tabman.vim'

```

#### 支持操作

|      命令             |         解释          |
|-----------------------|:---------------------:|
|  :PluginList          |   列出所有Plugin      |
|  :PluginInstall(!)    |   安装/更新Plugin     |
|  :PluginSearch(!) foo |  搜索foo相关的Plugin  |
|  :PluginClean(!)      |  清理未使用的Plugin   |
|  :PluginUpdate        |      更新插件         |


### 工程文件浏览（NERDTree）

在这份配置中, 使用了[**NERDTree**](https://github.com/scrooloose/nerdtree)查看文件列表. 你可以在NERDTree中浏览和打开你文件系统中的目录或文件. 还可以进行文件隐藏和过滤, 设置添加书签等. 在NERDTree窗口输入`?`可获得操作指南. 这份配置中默认过滤掉了`.pyc`, `.git`, `.hg`, `.svn`等文件或文件夹的显示.

#### 配置

```vim
" auto open or close NERDTree
autocmd vimenter * if !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" NERDTree -----------------------------

" toggle nerdtree display
map <F3> :NERDTreeToggle<CR>
" open nerdtree with the current file selected
nmap ,t :NERDTreeFind<CR>
" don;t show these file types
let NERDTreeIgnore = ['\.pyc$', '\.pyo$']
```

#### 支持操作

|      快捷键           |         解释               |
|-----------------------|:--------------------------:|
|      F3               |   打开/关闭NERDTree        |
|      ,t               |打开NERDTree并选中当前文件  |


### 语法检查
在这份配置中， 使用[**Syntastic**](https://github.com/scrooloose/syntastic)插件进行语法静态检查. 包括但不限于`C/C++/Go/Python/Haskell/Ruby/JavaScript`等. 在本配置中对JavaScript的静态检查使用`eslint`,可以支持ES6及JSX等, 细节可以参考[JSLint, JSHint和ESLint的对比及Vim配置](http://moelove.info/2015/11/28/JSLint-JSHint-ESLint%E5%AF%B9%E6%AF%94%E5%92%8CVim%E9%85%8D%E7%BD%AE/), 想要切换检查工具只要修改对应位置即可.

#### 配置

#### 支持操作

|      快捷键           |         解释               |
|-----------------------|:--------------------------:|
|                       |                            |


### Git支持

#### 配置

#### 支持操作

|      快捷键           |         解释               |
|-----------------------|:--------------------------:|
|                       |                            |


### Tag支持

在这份配置中，使用了[**Tagbar**](http://github.com/godlygeek/tagbar)做Tag支持，可以显示当前文件中定义的类/变量等.

#### 配置

```vim
" Tagbar -----------------------------

" toggle tagbar display
map <F4> :TagbarToggle<CR>
" autofocus on tagbar open
let g:tagbar_autofocus = 1
```

#### 支持操作

|      快捷键           |         解释               |
|-----------------------|:--------------------------:|
|       F4              |     打开Tag列表            |


### 超全自动补全

#### 配置

#### 支持操作

|      快捷键           |         解释               |
|-----------------------|:--------------------------:|
|                       |                            |


### 类Tmux的窗口选择

#### 配置

#### 支持操作

|      快捷键           |         解释               |
|-----------------------|:--------------------------:|
|                       |                            |


### 优雅的状态栏(Airline)

#### 配置

#### 支持操作

|      快捷键           |         解释               |
|-----------------------|:--------------------------:|
|                       |                            |


### 自动插入头部

#### 配置

#### 支持操作

|      快捷键           |         解释               |
|-----------------------|:--------------------------:|
|                       |                            |


### Markdown实时预览

#### 配置

#### 支持操作

|      快捷键           |         解释               |
|-----------------------|:--------------------------:|
|                       |                            |


* 快速文件查找

    在本配置中, 可以通过使用`,R`进行全文查找或者`,r`进行快速查找, 或者在当前字符串上使用`,wR`以及`,wr`来进行全文查找或者快速查找.

* 快速注释

    使用[**NERDCommenter**](https://github.com/scrooloose/nerdcommenter)插件完成快速注释, 可以通过`\ci`进行快速注释.

* Python 支持

    完备的Python支持, 可以自动识别当前是系统环境或虚拟环境, 使用`:Isort`可智能对导入包进行排序, 使用`:PymodeLintAuto`可自动格式化.

[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/tao12345666333/vim/trend.png)](https://bitdeli.com/free "Bitdeli Badge")
