#!/bin/bash

# .gitconfig
if [[ -f "$HOME/.gitconfig" ]] || [[ -h "$HOME/.gitconfig" ]]; then
  echo "git: deleting old $HOME/.gitconfig"
  rm "$HOME/.gitconfig"
fi

echo "git: $HOME/.gitconfig -> $PWD/.gitconfig"
ln -s "$PWD/.gitconfig" "$HOME/.gitconfig"
