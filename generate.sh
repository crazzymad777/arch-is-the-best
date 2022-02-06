#!/bin/bash

set -o allexport
source data/$1

if [[ $BUILD_INSIDE == ";"  ]]; then

echo '## '$NAME'
#### Install dependencies
`sudo pacman -S '$PACKAGES'`
#### Run
`'$RUN_INSIDE'`' > $1/README.md

else

echo '## '$NAME'
#### Install dependencies
`sudo pacman -S '$PACKAGES'`
#### Build
`'$BUILD_INSIDE'`
#### Run
`'$RUN_INSIDE'`' > $1/README.md

fi

set +o allexport
