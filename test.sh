#!/bin/sh

cd test_the_best && ./deploy.sh && cd ..

set -o allexport
source data/nodejs
./bin/test_the_best "$RUN" &&
 echo "Node.js ok" ||
 echo "Node.js error"
set +o allexport

set -o allexport
source data/rust
$BUILD
./bin/test_the_best "$RUN" &&
 echo "Rust ok" ||
 echo "Rust error"
set +o allexport

set -o allexport
source data/zig
$BUILD
./bin/test_the_best "$RUN" &&
 echo "Zig ok" ||
 echo "Zig error"
set +o allexport
