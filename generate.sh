#!/bin/bash

set -o allexport
source data/$1

if [[ $BUILD_INSIDE != ";"  ]]; then
BUILDTEXT='Build:
`'$BUILD_INSIDE'`'
fi

echo '## '$NAME'
Install dependencies: `sudo pacman -S '$PACKAGES'`
'$BUILDTEXT'
Run: `'$RUN_INSIDE'`' > $1/README.md
set +o allexport
