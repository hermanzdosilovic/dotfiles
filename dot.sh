#!/bin/bash

cd ~/.dotfiles # Assumes that dotfiles are located in home directory

args=( $@ ); args=${args[@]:1}

case $1 in
  install)
    ./install.sh $args
    ;;

  remove)
    ./remove.sh $args
    ;;

  *)
    echo "usage: dot {install|remove} [module ...]"
    ;;
esac
