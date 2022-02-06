#!/bin/bash

if [[ ! -z $1 ]]; then
   set -o allexport
   source data/$1
   if [[ "$BUILD" != ";" ]]; then
      $BUILD
   fi
   set +o allexport
fi
