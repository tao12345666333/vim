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

在这份配置中，使用了[**Vundle**](https://github.com/VundleVim/Vundle.vim)作为插件管理器. Vundle会自动接管 `.vim` 文件夹，所以在使用之前请确保 `.vim` 文件夹干净. Vundle的插件安装需要触发 `git clone` 操作，搜索需要 `curl` 支持.

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


### 文件浏览

在这份配置中, 使用了[**NERDTree**](https://github.com/scrooloose/nerdtree)作为文件浏览器. 你可以在NERDTree中浏览和打开你文件系统中的目录或文件. 还可以进行文件隐藏和过滤, 设置添加书签等. 这份配置中默认过滤掉了`Python`的中间文件.

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

* Git支持
* 语法检查
* Python 支持
* 超强自动补全



[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/tao12345666333/vim/trend.png)](https://bitdeli.com/free "Bitdeli Badge")
