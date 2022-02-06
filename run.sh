#!/bin/bash

if [[ ! -z $1 ]]; then
   set -o allexport
   source data/$1
   $RUN
   set +o allexport
fi
