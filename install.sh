#!/bin/bash

PWD="$( cd "$( dirname "$0" )" && pwd )"

ln -nfs $PWD/.dircolors $HOME/.dircolors
ln -nfs $PWD/.fonts $HOME/.fonts
ln -nfs $PWD/.gitconfig $HOME/.gitconfig
ln -nfs $PWD/.gitignore_global $HOME/.gitignore_global
ln -nfs $PWD/.inputrc $HOME/.inputrc
ln -nfs $PWD/.tmux.conf $HOME/.tmux.conf
ln -nfs $PWD/.tmux.conf.local $HOME/.tmux.conf.local
ln -nfs $PWD/.vim $HOME/.vim
ln -nfs $PWD/.vimrc $HOME/.vimrc
ln -nfs $PWD/.xinitrc $HOME/.xinitrc
ln -nfs $PWD/.zlogin $HOME/.zlogin
ln -nfs $PWD/.zlogout $HOME/.zlogout
ln -nfs $PWD/.zprezto $HOME/.zprezto
ln -nfs $PWD/.zpreztorc $HOME/.zpreztorc
ln -nfs $PWD/.zprofile $HOME/.zprofile
ln -nfs $PWD/.zshenv $HOME/.zshenv
ln -nfs $PWD/.zshrc $HOME/.zshrc
