#!/bin/bash

set -o allexport
source data/$1
$RUN
set +o allexport
