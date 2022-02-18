#!/bin/sh

languages=(
  bash
  c++
  java
  kotlin
  python
  nodejs
  rust
  zig
)

cd test_the_best && ./deploy.sh && cd ..

for language in ${languages[@]}
do
  ./check.sh $language
done
