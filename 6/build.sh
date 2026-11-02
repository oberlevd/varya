#!/bin/bash
set -e

docker build -t unix-lab-u4b .
docker run --rm -it -v "$PWD:/root/lab" unix-lab-u4b