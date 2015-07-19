#!/bin/bash

if [[ -f "$HOME/.gitconfig" ]]; then
  echo "git: removing $HOME/.gitconfig [OK]"
  rm "$HOME/.gitconfig"
else
  echo "git: $HOME/.gitconfig is already removed [OK]"
fi
