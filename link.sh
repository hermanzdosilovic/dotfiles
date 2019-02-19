#!/bin/sh

FILES=(
  .gitconfig
  .gitignore
  .tmux.conf
  .vim
  .vimrc
)

for f in ${FILES[@]}; do
  rm -rfi ~/$f
  ln -s $PWD/$f ~/$f
done
