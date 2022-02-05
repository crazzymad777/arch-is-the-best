#!/bin/bash

set -o allexport
source data/$1
sudo pacman -S $PACKAGES
set +o allexport
