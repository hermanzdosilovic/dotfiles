#!/bin/bash
sudo -v

for directory in $(echo */); do
  cd $directory
  ./remove.sh
  cd ..
done
