#!/bin/bash

rm "$HOME/.gitconfig" 2> /dev/null
ln -s "$PWD/.gitconfig" "$HOME/.gitconfig"
