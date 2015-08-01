#!/bin/bash

cd ~/.dotfiles # Assumes that dotfiles are located in home directory

args=( $@ ); args=${args[@]:1}

case $1 in
  link)
    script="link.sh"
    message="Linking"
    ;;

  unlink)
    script="unlink.sh"
    message="Unlinking"
    ;;

  update)
    echo "Updating dotfiles"
    cd ~/.dotfiles
    git pull origin master
    exit
    ;;
  *)
    echo "usage: punkt { {link|unlink [module ...]} | update }"
    exit
    ;;
esac

if [[ -n $args ]]; then # If user provided some arguments
  for arg in $args; do
    if [[ -n $(ls $arg 2> /dev/null) ]]; then
      echo "$message module $arg"
      cd $arg
      ./$script
      cd ..
    else
      echo "Could not find module $arg"
    fi
    echo
  done
  exit
fi

for directory in */; do
  echo "$message module ${directory%?}"
  cd $directory
  ./$script
  cd ..
  echo
done
