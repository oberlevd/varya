#!/bin/sh
set -e

docker build -t unix-lab-u1 .
docker run --rm -it unix-lab-u1
