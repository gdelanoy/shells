#!/bin/bash
D=/home/guillaume/.shells/root/
cp -varf .oh-my-zsh $D
cat .zshrc > $D/zshrc
cat .dircolors > $D/dircolors
cat .vim/vimrc > $D/vimrc
cat .ps1.txt > $D/ps1.txt

chown -R guillaume:root $D/*
chown -R guiillaume:root $D/.oh-my-zsh

