#!/bin/bash

for file in $(ls .z* 2> /dev/null); do
  ln -s "$PWD/$file" "$HOME/$file"
done
