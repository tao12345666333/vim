#!/bin/sh
echo "please wait for a moment"
if which apt-get >/dev/null; then
	sudo apt-get install -y vim vim-gnome ctags xclip astyle python-setuptools python-dev git
elif which yum >/dev/null; then
	sudo yum install -y gcc vim git ctags xclip astyle python-setuptools python-devel	
fi

sudo easy_install -ZU autopep8 twisted
sudo ln -s /usr/bin/ctags /usr/local/bin/ctags
mv -f ~/vim ~/vim_old
mv -f ~/.vim ~/.vim_old
mv -f ~/.vimrc ~/.vimrc_old
cd ~/ && git clone https://github.com/tao12345666333/vim.git
mv -f ~/vim ~/.vim
mv -f ~/.vim/.vimrc ~/
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
echo "TaoBeier will setup your vim please wait" > taobeier
echo "it will auto exit while setup complete" >> taobeier
echo "please wait" >> taobeier
vim taobeier -c "BundleInstall" -c "q" -c "q"

echo "init complete"
