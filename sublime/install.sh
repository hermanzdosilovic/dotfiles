#!/bin/bash
source variables.sh

rm "$package_path/$package_control"
ln -s "$PWD/$package_control" "$package_path/$package_control"

rm "$package_path/$preferences"
ln -s "$PWD/$preferences" "$package_path/$preferences"
