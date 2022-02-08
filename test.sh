#!/bin/sh

cd test_the_best && ./deploy.sh && cd ..

./check.sh bash
./check.sh java
./check.sh kotlin
./check.sh python
./check.sh nodejs
./check.sh rust
./check.sh zig
