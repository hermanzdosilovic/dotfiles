#!/bin/sh

FILES=(
  .gitconfig
  .gitignore
  .tmux.conf
  .vimrc
)

for f in ${FILES[@]}; do
  rm -rfi ~/$f
  ln -s $PWD/$f ~/$f
done
