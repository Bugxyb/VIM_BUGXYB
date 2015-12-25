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
cp -r colors ~/.vim/

echo "Install .vimrc"
cp vimrc ~/.vimrc
cp vimrc.bundles ~/.vimrc.bundles

echo "Install Plugin from Vundle"
vim +PluginInstall +qall
