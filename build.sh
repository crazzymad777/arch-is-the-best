#!/bin/bash

set -o allexport
source data/$1
$BUILD
set +o allexport
