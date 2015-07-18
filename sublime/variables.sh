#!/bin/bash

package_control="Package Control.sublime-settings"
preferences="Preferences.sublime-settings"

if [[ $OSTYPE == darwin* ]]; then
  package_path="$HOME/Library/Application Support/Sublime Text 3/Packages/User"
else
  package_path="$HOME/.config/sublime-text-3/Packages/User"
fi
