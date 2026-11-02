#!/bin/bash
set -e
docker build -t unix-lab-u3 .
docker run --rm -it -v "$PWD:/root/lab" unix-lab-u3
