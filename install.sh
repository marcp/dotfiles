#!/bin/bash

PWD="$( cd "$( dirname "$0" )" && pwd )"

sources=(.bashrc .dircolors .fonts .gitconfig .gitignore_global .inputrc .tmux.conf .tmux.conf.local .vim .vimrc)

make_archive_directory () {
  archive_directory=$PWD/SAVED
  mkdir -p $archive_directory
}

archive_file () {
  file=$1
  archive_directory=$PWD/SAVED
  echo Archiving $file to $archive_directory
  mv $file $archive_directory
}

process_existing_file () {
  file=$1
  if [[ -h $file ]]
  then
    echo $file is a link. Removing it.
    rm $file
  elif [[ -f $file || -d $file ]]
  then
    echo $file exists
    archive_file $file
  else
    echo $file missing
  fi
}

check_file () {
  file=$1
  home_dir=$2
  source_dir=$3

  echo file: $file
  echo home_dir: $home_dir
  echo source_dir: $source_dir

  source_file=$source_dir/$file
  dest_file=$home_dir/$file

  if [[ -f $source_file || -d $source_file ]]
  then
    process_existing_file $dest_file
    ln -nfs $source_file $dest_file
  else
    echo $file is missing from $source_dir. Skipping.
  fi
}

make_archive_directory

for src in ${sources[@]}
do
  check_file $src $HOME $PWD
done
