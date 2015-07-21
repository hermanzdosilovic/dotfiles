#!/bin/bash
source variables.sh

# Package Control.sublime-settings
if [[ -f "$package_path/$package_control" ]] || [[ -h "$package_path/$package_control" ]]; then
  echo "sublime: deleting old $package_path/$package_control"
  rm "$package_path/$package_control"
fi
echo "sublime: $package_path/$package_control -> $PWD/$package_control"
ln -s "$PWD/$package_control" "$package_path/$package_control"

# Preferences.sublime-settings
if [[ -f "$package_path/$preferences" ]] || [[ -h "$package_path/$preferences" ]]; then
  echo "sublime: deleting old $package_path/$preferences"
  rm "$package_path/$preferences"
fi
echo "sublime: $package_path/$preferences -> $PWD/$preferences"
ln -s "$PWD/$preferences" "$package_path/$preferences"

