#!/bin/bash

wget https://raw.githubusercontent.com/tao12345666333/vim/master/vimrc -O $HOME/.vimrc

vim -E -u $HOME/.vimrc +qall

echo 'Install Complete! '
