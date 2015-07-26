#!/bin/bash

# .gitconfig
if [[ -f "$HOME/.gitconfig" ]] || [[ -h "$HOME/.gitconfig" ]]; then
  echo "git: deleting $HOME/.gitconfig"
  rm "$HOME/.gitconfig"
else
  echo "git: $HOME/.gitconfig was already deleted"
fi


# .gitignore
if [[ -f "$HOME/.gitignore" ]] || [[ -h "$HOME/.gitignore" ]]; then
  echo "git: deleting $HOME/.gitignore"
  rm "$HOME/.gitignore"
else
  echo "git: $HOME/.gitignore was already deleted"
fi
