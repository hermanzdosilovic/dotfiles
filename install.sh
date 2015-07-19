#!/bin/bash

if [[ -n $@ ]]; then # If user provided some arguments
  for arg in $@; do
    if [[ -n $(ls $arg 2> /dev/null) ]]; then
      echo "Installing module $arg"
      cd $arg
      ./install.sh
      cd ..
    else
      echo "Could not find module $arg"
    fi
  done
  exit
fi

for directory in */; do
  echo "Installing module ${directory%?}"
  cd $directory
  ./install.sh
  cd ..
done
