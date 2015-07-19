#!/bin/bash

if [[ -n $@ ]]; then # If user provided some arguments
  for arg in $@; do
    if [[ -n $(ls $arg 2> /dev/null) ]]; then
      echo "Removing module $arg"
      cd $arg
      ./remove.sh
      cd ..
    else
      echo "Could not find module $arg"
    fi
  done
  exit
fi

for directory in */; do
  echo "Removing module ${directory%?}"
  cd $directory
  ./remove.sh
  cd ..
done
