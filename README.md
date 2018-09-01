# [My Vim setting](http://tao12345666333.github.com/vim)
[![Build Status](https://travis-ci.org/tao12345666333/vim.png)](https://travis-ci.org/tao12345666333/vim)
[![pipeline status](https://gitlab.com/taobeier/vim/badges/master/pipeline.svg)](https://gitlab.com/taobeier/vim/commits/master)

## [中文说明](README-zh.md)

## screenshot

![screenshot.png](screenshot.png)

## Stargazers over time

[![Stargazers over time](https://starcharts.herokuapp.com/tao12345666333/vim.svg)](https://starcharts.herokuapp.com/tao12345666333/vim)

## Try it

You can use Docker to try it.

```
sudo docker run -it --rm taobeier/vim 
```

Or use the GitLab registry, **where the image is automatically built weekly and all dependent packages are updated**.

```
sudo docker run -it --rm registry.gitlab.com/taobeier/vim
```

## Install
(You need a vim compiled with python support. Check it with `vim --version | grep +python`)

* **Dependencies**(Debian/Ubuntu platform)

    `sudo apt-get install python vim exuberant-ctags git`

    `sudo pip install pep8 flake8 pyflakes isort`

* **Dependencies**(RedHat/CentOS platform)

    The CentOS 6.7's default Python is 2.6, it's recommend to install Python2.7.

    `sudo yum install python vim ctags git`

    `sudo pip install pep8 flake8 pyflakes isort`

* **Dependencies**(Mac OS platform)

    `brew install python vim git`

    `wget --no-check-certificate http://tenet.dl.sourceforge.net/project/ctags/ctags/5.8/ctags-5.8.tar.gz && tar -zxvf ctags-5.8.tar.gz && cd ctags-5.8 && ./configure && make && sudo make install`

    `sudo pip install pep8 flake8 pyflakes isort`

* **Download vimrc file to user home directory**

    `wget --no-check-certificate https://raw.githubusercontent.com/tao12345666333/vim/master/vimrc -O $HOME/.vimrc`

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
Plugin 'gmarik/vundle'

" ============================================================================
" Active plugins
" You can disable or add new ones here:

" Plugins from github repos:

" Better file browser
Plugin 'scrooloose/nerdtree'
" Code commenter
Plugin 'scrooloose/nerdcommenter'
" Class/module browser
Plugin 'majutsushi/tagbar'
" Code and files fuzzy finder
Plugin 'kien/ctrlp.vim'
" Extension to ctrlp, for fuzzy command finder
Plugin 'fisadev/vim-ctrlp-cmdpalette'
" Zen coding
Plugin 'mattn/emmet-vim'
" Git integration
Plugin 'motemen/git-vim'
" Tab list panel
Plugin 'kien/tabman.vim'

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

|  shortcut key         |    description             |
|-----------------------|:--------------------------:|
|      F3               | open/close NERDTree        |
|      ,t               |open NERDTree and select current file|


### Syntax checking

In this configuration，I use [**Syntastic**](https://github.com/scrooloose/syntastic) plugin for syntax checking. Support `C/C++/Go/Python/Haskell/Ruby/JavaScript` etc. For JavaScript, I use `eslint` as checker, so it can check ES6 and JSX etc. You can see [JSLint, JSHint和ESLint的对比及Vim配置](http://moelove.info/2015/11/28/JSLint-JSHint-ESLint%E5%AF%B9%E6%AF%94%E5%92%8CVim%E9%85%8D%E7%BD%AE/) for more details, when you want to change checker tools, just modify a little setting.

#### Configuration

```vim
" Syntastic ------------------------------

" show list of errors and warnings on the current file
nmap <leader>e :Errors<CR>
" turn to next or previous errors, after open errors list
nmap <leader>n :lnext<CR>
nmap <leader>p :lprevious<CR>
" check also when just opened the file
let g:syntastic_check_on_open = 1
" syntastic checker for javascript.
" eslint is the only tool support JSX.
" If you don't need write JSX, you can use jshint.
" And eslint is slow, but not a hindrance
" let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_javascript_checkers = ['eslint']
" don't put icons on the sign column (it hides the vcs status icons of signify)
let g:syntastic_enable_signs = 0
" custom icons (enable them if you use a patched font, and enable the previous 
" setting)
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_style_error_symbol = '✗'
let g:syntastic_style_warning_symbol = '⚠'
```

#### Features

When you save files, it will check syntax automatically, and display syntax errors.

#### Support opration

|   shortcut key        |    description             |
|-----------------------|:--------------------------:|
|       `\e`            |     list syntax errors     |
|       `\n`            |     turn to next error     |
|       `\p`            |     turn to previous error |
