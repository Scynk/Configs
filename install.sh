#!/bin/bash

sciezka=~/Configs
cd ~/

# Instalacja pliku .bashrc
mv ~/.bashrc ~/.bashrc.old 2>/dev/null
cp $sciezka/.bashrc ~/.bashrc

# Instalacja pliku .tmux.conf
mv ~/.tmux.conf ~/.tmux.conf.old 2>/dev/null
cp $sciezka/.tmux.conf ~/.tmux.conf

# Instalacja ustawien Vim'a
mv ~/.vimrc ~/.vimrc.old 2>/dev/null
rm -rf ~/.vim
cp -r $sciezka/Vim ~/.vim
mv ~/.vim/.vimrc ~/.vimrc
