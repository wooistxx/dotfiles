#!/bin/bash

cwd=`pwd`
# echo $cwd

# alias
ln -snf $cwd/aliases ~/.aliases

# ssh
ln -snf $cwd/ssh ~/.ssh

# vimrc
ln -snf $cwd/vimrc ~/.vimrc

# zsh
ln -snf $cwd/oh-my-zsh ~/.oh-my-zsh
ln -snf $cwd/zshrc ~/.zshrc






