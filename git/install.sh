#!/bin/bash

if [[ -f "$HOME/.gitconfig" ]] || [[ -h "$HOME/.gitconfig" ]]; then
  echo "git: removing old $HOME/.gitconfig [OK]"
  rm "$HOME/.gitconfig"
fi

echo "git: $HOME/.gitconfig -> $PWD/.gitconfig [OK]"
ln -s "$PWD/.gitconfig" "$HOME/.gitconfig"
