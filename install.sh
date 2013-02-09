#!/bin/bash

PWD="$( cd "$( dirname "$0" )" && pwd )"

ln -nfs $PWD/.colors $HOME/.colors
ln -nfs $PWD/.cvsignore $HOME/.cvsignore
ln -nfs $PWD/.dircolors $HOME/.dircolors
ln -nfs $PWD/.fonts/* $HOME/.fonts
ln -nfs $PWD/.ghci $HOME/.ghci
ln -nfs $PWD/.gitconfig $HOME/.gitconfig
ln -nfs $PWD/.hgrc $HOME/.hgrc
ln -nfs $PWD/.inputrc $HOME/.inputrc
ln -nfs $PWD/.jshintrc $HOME/.jshintrc
ln -nfs $PWD/.lein/*.clj $HOME/.lein
ln -nfs $PWD/.ncmpcpp $HOME/.ncmpcpp
ln -nfs $PWD/.pentadactylrc $HOME/.pentadactylrc
ln -nfs $PWD/.scheme_completion $HOME/.scheme_completion
ln -nfs $PWD/.tmux.conf $HOME/.tmux.conf
ln -nfs $PWD/.xinitrc $HOME/.xinitrc
ln -nfs $PWD/.xmobarrc $HOME/.xmobarrc
ln -nfs $PWD/.xmonad $HOME/.xmonad
ln -nfs $PWD/.Xresources $HOME/.Xresources
ln -nfs $PWD/.xswap $HOME/.xswap
