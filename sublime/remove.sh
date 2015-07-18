#!/bin/bash
source variables.sh

rm "$package_path/$package_control"
touch "$package_path/$package_control"

rm "$package_path/$preferences"
touch "$package_path/$preferences"
