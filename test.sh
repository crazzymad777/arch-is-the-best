#!/bin/sh

cd test_the_best && ./deploy.sh && cd ..

./bin/test_the_best nodejs/index.js &&
 echo "Node.js ok" ||
 echo "Node.js error"


