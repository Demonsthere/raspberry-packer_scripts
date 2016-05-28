#!/bin/bash

image=$1
kernel=$2

qemu-system-arm -hda $image -m 256 -display sdl	\
	-machine versatilepb,accel=tcg -netdev user,id=user.0 -vnc 0.0.0.0:87 	\
	-cpu arm1176 -device e1000,netdev=user.0 -kernel $kernel \
	-append "root=/dev/sda2 rootfstype=ext4 rw" -name Raspbian-Forged \
	-net nic,macaddr=00:16:3e:00:00:01 -net user,hostfwd=tcp::2223-:22 -k en-gb
