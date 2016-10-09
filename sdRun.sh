#!/bin/bash

image=$1
kernel=$2
init=$3
qemu-system-arm -m 1024	-boot order=ncd -machine vexpress-a9,accel=tcg \
  -cpu cortex-a9 -kernel $kernel \
  -append "root=/dev/mmcblk0p2 mem=1024M devtmpfs.mount=0 rw vga=normal" \
  -name SD-card_emulation_run -drive file=$image,if=sd,cache=writeback \
  -net nic,macaddr=00:16:3e:00:00:01 -net user,hostfwd=tcp::2223-:22 \
  -netdev user,id=user.0 -device virtio-net-device,netdev=user.0 \
  -initrd $init
  