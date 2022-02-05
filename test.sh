#!/bin/sh

cd test_the_best && ./deploy.sh && cd ..

./check.sh nodejs
./check.sh rust
./check.sh zig
