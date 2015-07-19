#!/bin/bash
source variables.sh

# Package Control.sublime-settings
if [[ -f "$package_path/$package_control" ]]; then
  echo "sublime: removing old $package_path/$package_control [OK]"
  rm "$package_path/$package_control"
fi
echo "sublime: $package_path/$package_control -> $PWD/$package_control [OK]"
ln -s "$PWD/$package_control" "$package_path/$package_control"

# Preferences.sublime-settings
if [[ -f "$package_path/$preferences" ]]; then
  echo "sublime: removing old $package_path/$preferences [OK]"
  rm "$package_path/$preferences"
fi
echo "sublime: $package_path/$preferences -> $PWD/$preferences [OK]"
ln -s "$PWD/$preferences" "$package_path/$preferences"

