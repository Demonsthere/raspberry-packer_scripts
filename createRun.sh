#!/bin/bash -x
qemu-system-arm -m 1024M -sd $1 -M vexpress-a9 -cpu cortex-a9 -kernel $2 -initrd $3 -append "root=/dev/ram" -serial stdio -no-reboot
