#!/bin/bash -x
sleep 10s
echo "%%%%%%%%%%%%%%%%%%%% Installing the Chef package %%%%%%%%%%%%%%%%%%%%%%%%%%%%"
sudo DEBIAN_FRONTEND=noninteractive apt-get -fuy -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" --force-yes install chef
sudo apt-get -fuy install ubuntu-minimal apt-utils zip unzip
