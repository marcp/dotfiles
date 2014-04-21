#!/bin/bash

function rm_if_symbolic()
{
  if [ -L $HOME/$1 ]
  then
    rm $HOME/$1
  else
    echo "$HOME/$1 is not a symbolic link.  Not deleting it."
  fi

}


rm_if_symbolic ".zlogin"
rm_if_symbolic ".zlogout"
rm_if_symbolic ".zprezto"
rm_if_symbolic ".zpreztorc"
rm_if_symbolic ".zprofile"
rm_if_symbolic ".zshenv"
rm_if_symbolic ".zshrc"
rm_if_symbolic ".znotsymbolic"
