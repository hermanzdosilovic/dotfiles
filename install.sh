#!/bin/bash
sudo -v

for directory in $(echo */); do
  cd $directory
  ./install.sh
  cd ..
done
