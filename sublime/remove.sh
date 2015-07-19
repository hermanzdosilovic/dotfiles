#!/bin/bash
source variables.sh

# Package Control.sublime-settings
if [[ -f "$package_path/$package_control" ]] || [[ -h "$package_path/$package_control" ]]; then
  echo "sublime: removing $package_path/$package_control [OK]"
  rm "$package_path/$package_control"
  echo "sublime: creating empty $package_path/$package_control [OK]"
  touch "$package_path/$package_control"
else
  echo "sublime: $package_path/$package_control is already removed [OK]"
  echo "sublime: creating empty $package_path/$package_control [OK]"
  touch "$package_path/$package_control"
fi

# Preferences.sublime-settings
if [[ -f "$package_path/$preferences" ]] || [[ -h "$package_path/$preferences" ]]; then
  echo "sublime: removing $package_path/$preferences [OK]"
  rm "$package_path/$preferences"
  echo "sublime: creating empty $package_path/$preferences [OK]"
  touch "$package_path/$preferences"
else
  echo "sublime: $package_path/$preferences is already removed [OK]"
  echo "sublime: creating empty $package_path/$preferences [OK]"
  touch "$package_path/$preferences"
fi
