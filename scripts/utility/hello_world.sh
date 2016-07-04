#!/bin/bash
echo 'Hello world!'
echo '----> cpuinfo'
cat /proc/cpuinfo
echo '----> uname'
uname -a
echo '----> lsb data'
lsb_release -a
echo '----> disc space'
df -h
