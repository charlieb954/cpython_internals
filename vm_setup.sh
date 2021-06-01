#!/bin/bash

sudo apt install git -y
sudo apt install vim -y

if [ ! -d "./cpython-book-samples" ]
then
	git clone https://github.com/tonybaloney/cpython-book-samples.git
fi

if [ ! -d "./cpython" ] 
then
	git clone --branch 3.9 https://github.com/python/cpython 
fi

if [ ! -d "/root/.vim/bundle/Vundle.vim" ]
then
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	sudo mv ./cpython-book-samples/11/.vimrc ~/.vimrc
fi

vim +PluginInstall +qall

sudo apt install build-essential -y

sudo apt install libssl-dev zlib1g-dev libncurses5-dev libncursesw5-dev libreadline-dev libsqlite3-dev libgdbm-dev libdb5.3-dev libexpat1-dev liblzma-dev libffi-dev -y

./cpython/configure --with-pydebug

