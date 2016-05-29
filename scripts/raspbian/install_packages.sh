#!/bin/bash
export DEBIAN_FRONTEND=noninteractive
echo '----> Get standard packages'
sudo apt-get -fuy -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" --force-yes install curl tightvncserver