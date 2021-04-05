
cwd=`pwd`


ln -snf $cwd/tpm ~/.tmux/plugins/tpm

ln -snf $cwd/tmux.conf ~/.tmux.conf
ln -snf $cwd/tmux.conf.local ~/.tmux.conf.local
tmux source ~/.tmux.conf


