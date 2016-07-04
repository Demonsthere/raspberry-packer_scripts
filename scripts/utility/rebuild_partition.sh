#!/bin/bash

echo '----> Rebuilding the system partition table'
sudo raspi-config --expand-rootfs
