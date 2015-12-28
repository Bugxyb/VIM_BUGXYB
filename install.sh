#!/bin/bash
#Prgram:
#   Vim configure setup shell:
#   1 Get Vundle from Git
#   2 Install .vimrc
#   3 Install Plugin from Vundle
#History:
#   2015/12/25  Bugxyb  Create

echo "Get Vundle Vim from Git"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "Install .vimrc"
cp vimrc ~/.vimrc
cp vimrc.bundles ~/.vimrc.bundles

echo "Install Plugin from Vundle"
vim +PluginInstall +qall

#check Mac OS Linux and put colors
cp -r ~/.vim/bundle/vim-colors-solarized/colors/ ~/.vim/colors
