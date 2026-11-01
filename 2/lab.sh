#!/bin/sh
set -e

cd /root/lab/2.1
make
./prog
make install
ls -l /tmp/prog
make clean

cd /root/lab/2.2
make
./prog
make install
ls -l /tmp/prog
make clean
