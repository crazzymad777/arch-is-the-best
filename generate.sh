#!/bin/bash

set -o allexport
source data/$1

export BUILDTEXT=''

if [[ $BUILD_INSIDE != ";"  ]]; then
export BUILDTEXT='#### Build
`'$BUILD_INSIDE'`'
fi

echo '## '$NAME'
#### Install dependencies
`sudo pacman -S '$PACKAGES'`
'$BUILDTEXT'
#### Run
`'$RUN_INSIDE'`' > $1/README.md
set +o allexport
