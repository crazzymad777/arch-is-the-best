#!/bin/bash

if [[ ! -z $1 ]]; then
   set -o allexport
   source data/$1
   ./build.sh $1
   ./bin/test_the_best "$RUN" &&
    echo "$NAME ok" ||
    echo "$NAME error"
   set +o allexport
fi
