#!/bin/bash

set -o allexport
source data/$1
$BUILD
./bin/test_the_best "$RUN" &&
 echo "$NAME ok" ||
 echo "$NAME error"
set +o allexport
