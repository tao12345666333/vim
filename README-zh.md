## [我的Vim配置](http://tao12345666333.github.com/vim)
[![Build Status](https://travis-ci.org/tao12345666333/vim.png)](https://travis-ci.org/tao12345666333/vim)

### 截图

![screenshot.png](screenshot.png)

### 安装
(你需要一个有Python支持的Vim版本. 请使用 `vim --version | grep +python` 来检查)

* **依赖**(Ubuntu 平台)

    `sudo apt-get install vim exuberant-ctags git`

    `sudo pip install dbgp vim-debug pep8 flake8 pyflakes isort`

* **下载vimrc 文件到用户主目录**

    `wget https://raw.githubusercontent.com/tao12345666333/vim/master/vimrc -O $HOME/.vimrc`

* **打开 Vim**

    打开Vim, 它将会自动安装插件. 请耐心等待它完成. 或者你可以使用下面的命令来自行安装.

    `vim -E -u $HOME/.vimrc +qall`

* **享受你的Vim并个性化它吧**

### 支持特性

* 插件管理
    使用**Vundle**进行插件管理. 在首次安装进行配置的时候, Vundle将自动进行安装并更新所有插件到最新版,所有配置插件将默认下载至`～/.vim/bundle/`. 查看已安装插件列表只需要执行`BundleList`即可.
* 工程文件浏览
    使用[**NERDTree**](https://github.com/scrooloose/nerdtree)插件查看文件列表. 在NERDTree窗口输入`?`可获得操作指南. 本配置中使用 `<F3>`即可激活或关闭文件列表. 同时本配置中,在文件列表中过滤了`.pyc`, `.git`, `.hg`, `.svn`等文件或文件夹的显示.
* 快速文件查找
    在本配置中, 
* Git支持
* 语法检查
* Python 支持



[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/tao12345666333/vim/trend.png)](https://bitdeli.com/free "Bitdeli Badge")
