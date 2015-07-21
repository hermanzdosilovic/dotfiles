#!/bin/bash

# .gitconfig
if [[ -f "$HOME/.gitconfig" ]] || [[ -h "$HOME/.gitconfig" ]]; then
  echo "git: deleting $HOME/.gitconfig"
  rm "$HOME/.gitconfig"
else
  echo "git: $HOME/.gitconfig was already deleted"
fi
