#!/bin/bash -x
echo "%%% RESIZE THE PARTITION %%%"
sudo fdisk /dev/mmcblk0 << EOF || true
d
2
n
p
2


w
EOF