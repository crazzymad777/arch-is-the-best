#!/bin/sh

cargo build --release
mkdir -p ../bin
cp target/release/test_the_best ../bin
