#!/bin/bash
#Prgram:
#   Vim configure setup shell:
#   1 Get Vundle from Git
#   2 Install .vimrc
#   3 Install Plugin from Vundle
#History:
#   2015/12/25  Bugxyb  Create

# Install vim-plug
if [ ! -f "$HOME/.vim/autoload/plug.vim" ]; then
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi


# Install .vimrc
cp conf/vimrc ~/.vimrc

# Install Plug 
vim +PlugInstall +qall

#check Mac OS Linux and put colors
#cp -r ~/.vim/bundle/vim-colors-solarized/colors/ ~/.vim/colors
