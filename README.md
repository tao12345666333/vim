# [My Vim setting](http://tao12345666333.github.com/vim)
[![Build Status](https://travis-ci.org/tao12345666333/vim.png)](https://travis-ci.org/tao12345666333/vim)

## [中文说明](README-zh.md)

## screenshot

![screenshot.png](screenshot.png)

## Install
(You need a vim compiled with python support. Check it with `vim --version | grep +python`)

* **Dependencies**(Debian/Ubuntu platform)

    `sudo apt-get install python vim exuberant-ctags git`

    `sudo pip install dbgp vim-debug pep8 flake8 pyflakes isort`

* **Download vimrc file to user home directory**

    `wget https://raw.githubusercontent.com/tao12345666333/vim/master/vimrc -O $HOME/.vimrc`

* **Open Vim**

    Open vim, it will install plugins automatically. Wait for the installation to finish.
    Or you can run

    `vim -E -u $HOME/.vimrc +qall`

* **Enjoy your Vim and costomize it**

## Features

### Plugin Manage(Vundle)

In this configuration，I use [**Vundle**](https://github.com/VundleVim/Vundle.vim) as plugins manager. Vundle will auto manage the `.vim` directory，all plugins which has benn configured will be download to `~/.vim/bundle/` by default, please keep the `.vim` directory clean before use it. When Vundle install plugins will trigger `git clone` opration，the search opration need `curl` .

#### Configuration(one part)

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

#### Support opration

|   command             |    description        |
|-----------------------|:---------------------:|
|  :PluginList          |   list all Plugins    |
|  :PluginInstall(!)    | install/update Plugin |
|  :PluginSearch(!) foo |search Plugin about foo|
|  :PluginClean(!)      |  clean unused Plugins |
|  :PluginUpdate        |      update Plugins   |


### Project file browser（NERDTree）

In this configuration，I use [**NERDTree**](https://github.com/scrooloose/nerdtree) as file browser. The NERDTree allows you to explore your filesystem and to open files and directory. It also allows you to hide files or set bookmarks etc. In NERDTree window input `?` can get the opration guide. This configuration filters out `.pyc`, `.git`, `.hg`, `.svn` etc.

#### Configuration

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

#### Support opration

|      command          |    description             |
|-----------------------|:--------------------------:|
|      F3               | open/close NERDTree        |
|      ,t               |open NERDTree and select current file|


[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/tao12345666333/vim/trend.png)](https://bitdeli.com/free "Bitdeli Badge")

