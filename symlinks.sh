#!/bin/bash

dotfiles=$(echo gitconfig \
                bash_profile \
                vimrc \
                ideavimrc \
                slate)

for f in $dotfiles
do
    ln -s `pwd`/$f $HOME/.$f
done


