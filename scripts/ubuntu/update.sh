#!/bin/bash -x
echo "Executing system update" 
sleep 10s
sudo DEBIAN_FRONTEND=noninteractive apt-get -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" --force-yes update
sleep 10s