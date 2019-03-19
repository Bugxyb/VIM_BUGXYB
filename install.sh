#!/bin/bash

# Install vim-plug
if [ ! -f "$HOME/.vim/autoload/plug.vim" ]; then
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi


# Install .vimrc
cp conf/vimrc ~/.vimrc

cp -r conf/conf/ ~/.vim/vimrc


# Install Plug 
vim +PlugInstall +qall

#check Mac OS Linux and put colors
cp -r ~/.vim/Bundle/vim-colors-solarized/colors/ ~/.vim/colors
