#!/bin/bash
source variables.sh

# Package Control.sublime-settings
if [[ -f "$package_path/$package_control" ]] || [[ -h "$package_path/$package_control" ]]; then
  echo "sublime: deleting $package_path/$package_control"
  rm "$package_path/$package_control"
  echo "sublime: creating empty $package_path/$package_control"
  touch "$package_path/$package_control"
else
  echo "sublime: $package_path/$package_control was already deleted"
  echo "sublime: creating empty $package_path/$package_control"
  touch "$package_path/$package_control"
fi

# Preferences.sublime-settings
if [[ -f "$package_path/$preferences" ]] || [[ -h "$package_path/$preferences" ]]; then
  echo "sublime: deleting $package_path/$preferences"
  rm "$package_path/$preferences"
  echo "sublime: creating empty $package_path/$preferences"
  touch "$package_path/$preferences"
else
  echo "sublime: $package_path/$preferences was already deleted"
  echo "sublime: creating empty $package_path/$preferences"
  touch "$package_path/$preferences"
fi
