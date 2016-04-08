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

* **享受你的Vim并个性化它吧**

## 支持特性

### 插件管理（Vundle）

在这份配置中，使用了[**Vundle**](https://github.com/VundleVim/Vundle.vim)作为插件管理器. Vundle会自动接管 `.vim` 文件夹，所以在使用之前请确保 `.vim` 文件夹干净. Vundle的插件安装需要触发 `git clone` 操作，搜索需要 `curl` 支持.



* 文件浏览
* Git支持
* 语法检查
* Python 支持
* 超强自动补全



[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/tao12345666333/vim/trend.png)](https://bitdeli.com/free "Bitdeli Badge")
