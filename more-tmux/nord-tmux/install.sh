#!/bin/bash
# -*- coding: utf-8 -*-
# Author: wooistxx (wooistxx@gmail,outlook.com)
# Create: 2021-04-12 21:29:49
# Desciption: 

cwd=`pwd`

#ln -snf $cwd/tpm ~/.tmux/plugins/tpm

ln -snf $cwd/tmux.conf ~/.tmux.conf
#ln -snf $cwd/tmux.conf.local ~/.tmux.conf.local
tmux source ~/.tmux.conf

