#!/usr/local/bin/bash

dotfiles=$(echo gitconfig \
                bash_profile \
                vimrc \
                ideavimrc)

for f in $dotfiles
do
    ln -s $f $HOME/.$f
done


