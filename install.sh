#!/bin/bash

set -o allexport
source data/$1
if [[ ! -z $PACKAGES ]]; then
   sudo pacman -S --needed $PACKAGES
fi
set +o allexport
