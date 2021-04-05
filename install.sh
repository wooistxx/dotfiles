#!/bin/bash

cwd=`pwd`
# echo $cwd

# alias
ln -snf $cwd/aliases ~/.aliases



# ssh
ln -snf $cwd/ssh ~/.ssh

# tmux
# ln -snf $cwd/tmux.conf ~/.tmux.conf
# tmux - oh-my-zsh
# ln -snf $cwd/oh-my-tmux/tmux.conf ~/.tmux.conf
# ln -snf $cwd/oh-my-tmux/tmux.conf.local ~/.tmux.conf.local
ln -snf $cwd/more_tmux/nord/tmux.conf ~/.tmux.conf
ln -snf $cwd/more_tmux/nord/tmux.conf.local ~/.tmux.conf.local
tmux source ${HOME}/.tmux.conf

# vimrc
ln -snf $cwd/vimrc ~/.vimrc

# zsh
ln -snf $cwd/oh-my-zsh ~/.oh-my-zsh
ln -snf $cwd/zshrc ~/.zshrc






