# [我的Vim配置](http://tao12345666333.github.com/vim)
[![Build Status](https://travis-ci.org/tao12345666333/vim.png)](https://travis-ci.org/tao12345666333/vim)

## 截图

![screenshot.png](screenshot.png)

## 安装
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

## 支持特性

* 插件管理

    使用[**Vundle**](https://github.com/VundleVim/Vundle.vim)进行插件管理. 在首次安装进行配置的时候, Vundle将自动进行安装并更新所有插件到最新版,所有配置插件将默认下载至`～/.vim/bundle/`. 查看已安装插件列表只需要执行`BundleList`即可.

* 工程文件浏览

    使用[**NERDTree**](https://github.com/scrooloose/nerdtree)插件查看文件列表. 在NERDTree窗口输入`?`可获得操作指南. 本配置中使用 `<F3>`即可激活或关闭文件列表. 同时本配置中,在文件列表中过滤了`.pyc`, `.git`, `.hg`, `.svn`等文件或文件夹的显示.

* 快速文件查找

    在本配置中, 可以通过使用`,R`进行全文查找或者`,r`进行快速查找, 或者在当前字符串上使用`,wR`以及`,wr`来进行全文查找或者快速查找.

* 快速注释

    使用[**NERDCommenter**](https://github.com/scrooloose/nerdcommenter)插件完成快速注释, 可以通过`\ci`进行快速注释.

* 语法检查

    使用[**Syntastic**](https://github.com/scrooloose/syntastic)插件进行语法静态检查. 包括但不限于C/C++/Go/Python/Haskell/JSX/JavaScript.在本配置中对JavaScript的静态检查使用`eslint`,可以支持ES6及JSX等, 细节可以参考[JSLint, JSHint和ESLint的对比及Vim配置](http://moelove.info/2015/11/28/JSLint-JSHint-ESLint%E5%AF%B9%E6%AF%94%E5%92%8CVim%E9%85%8D%E7%BD%AE/), 想要切换检查工具只要修改对应位置即可.

* Git及其他版本库支持

    集成[**git-vim**]()和[**vim-signify**]()来提供对Git及其他版本库支持, 默认只设置了`git`和`hg`的.

* 代码补全和智能提示

    使用[**complcache**](http://github.com/shougo/neocomplcache)以及[tern_for_vim](https://github.com/marijnh/tern_for_vim)等插件来完成代码补全和提示功能, 让你的Vim足够强大.

* Python 支持

    完备的Python支持, 可以自动识别当前是系统环境或虚拟环境, 使用`:Isort`可智能对导入包进行排序, 使用`:PymodeLintAuto`可自动格式化.

* Tag预览

    使用[**Tagbar**](http://github.com/godlygeek/tagbar)插件来完成,可以在一般模式按`F4`进行激活.


[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/tao12345666333/vim/trend.png)](https://bitdeli.com/free "Bitdeli Badge")
