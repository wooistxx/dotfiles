#!/bin/bash

cwd=`pwd`
# echo $cwd

# alias
ln -snf $cwd/aliases ~/.aliases



# nerd-fonts
# mkdir -p ~/.local/share/ && cd ~/.local/share
# git clone https://github.com/ryanoasis/nerd-fonts
# cd nerd-fonts
# bash install.sh

# ssh
ln -snf $cwd/ssh ~/.ssh

# tmux
# ln -snf $cwd/tmux.conf ~/.tmux.conf
# tmux - oh-my-zsh
<<<<<<< HEAD
#ln -snf $cwd/oh-my-tmux/tmux.conf ~/.tmux.conf
#ln -snf $cwd/oh-my-tmux/tmux.conf.local ~/.tmux.conf.local
ln -snf $cwd/more-tmux/nord-tmux/nord.tmux ~/.tmux.conf
tmux source ${HOME}/.tmux.conf
=======
ln -snf $cwd/oh-my-tmux/tmux.conf ~/.tmux.conf
ln -snf $cwd/oh-my-tmux/tmux.conf.local ~/.tmux.conf.local
tmux source ${HOME}/.tmux.conf
#bash ${cwd}/more-tmux/nordplus/install.sh
>>>>>>> 050859268bc800f434bd3982913389bbddcdae98


# vimrc
ln -snf $cwd/vimrc ~/.vimrc

# zsh
ln -snf $cwd/oh-my-zsh ~/.oh-my-zsh
ln -snf $cwd/zshrc ~/.zshrc






