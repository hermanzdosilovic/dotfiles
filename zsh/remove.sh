#!/bin/bash

for file in $(ls .z* 2> /dev/null); do
  rm "$HOME/$file"
done
