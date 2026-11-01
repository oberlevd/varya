#!/bin/bash
set -e

docker build -t unix-lab-u2 .
docker run --rm -it -v "$PWD:/root/lab" unix-lab-u2
