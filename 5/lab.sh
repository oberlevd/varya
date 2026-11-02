#!/bin/bash
set -e

cd /root/lab
chmod +x listdir_a.sh listdir_b.sh listdir_c.sh

./listdir_a.sh /etc | head -n 10
CHECK_DIR=/etc ./listdir_b.sh | head -n 10
printf '/etc\n' | ./listdir_c.sh | head -n 10
