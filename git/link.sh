#!/bin/bash

# .gitconfig
if [[ -f "$HOME/.gitconfig" ]] || [[ -h "$HOME/.gitconfig" ]]; then
  echo "git: deleting old $HOME/.gitconfig"
  rm "$HOME/.gitconfig"
fi

echo "git: $HOME/.gitconfig -> $PWD/.gitconfig"
ln -s "$PWD/.gitconfig" "$HOME/.gitconfig"


# .gitignore
if [[ -f "$HOME/.gitignore" ]] || [[ -h "$HOME/.gitignore" ]]; then
  echo "git: deleting old $HOME/.gitignore"
  rm "$HOME/.gitignore"
fi

echo "git: $HOME/.gitignore -> $PWD/.gitignore"
ln -s "$PWD/.gitignore" "$HOME/.gitignore"
