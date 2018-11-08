#! /bin/sh
#
# initVim.sh
# Copyright (C) 2018 mrg <mrg@MrGMacBookPro>
#
# Distributed under terms of the MIT license.
#

# install required package
brew install cmake

# copy vimrc to ~/.vimrc
cp vimrc ~/.vimrc

# install vim vundle
mkdir -p ~/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# install vim plugin
vim +PluginInstall +qall

# copy C-family Semantic Completion Engine
wget https://raw.githubusercontent.com/Valloric/ycmd/master/cpp/ycm/.ycm_extra_conf.py ~/.vim/.ycm_extra_conf.py

# compile YCM
cd ~/.vim/bundle/YouCompleteMe
./install.py

