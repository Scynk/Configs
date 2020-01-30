#!/bin/bash

sciezka=~/Configs
log=aktualizacje.txt

# Aktualizacja repozytorium
cd $sciezka
date >> $sciezka/$log
git pull >> $sciezka/$log
echo "- - - - - - - - - -" >> $sciezka/$log
echo "" >> $sciezka/$log

# Aktualizacja pliku .bashrc
cd ~/
cat .bashrc-template > .bashrc
echo "" >> .bashrc
cat $sciezka/.bashrc >> .bashrc
echo "" >> .bashrc

# Dodanie ustawień tylko dla Raspberry PI
if [ "`whoami`" = "pi" ]; then
    cat $sciezka/.bashrc-rpi >> .bashrc
    echo "" >> .bashrc
fi

# Przeładowanie pliku .bashrc
source ~/.bashrc

# Przeładowanie pliku .tmux.conf
if tmux info &> /dev/null; then
    tmux source-file ~/.tmux.conf
fi
