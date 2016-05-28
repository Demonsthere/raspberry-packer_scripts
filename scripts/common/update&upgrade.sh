#!/bin/bash -x
echo "Executing system update" 
sudo DEBIAN_FRONTEND=noninteractive apt-get -uy -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" --force-yes update
sudo DEBIAN_FRONTEND=noninteractive apt-get -uy -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" --force-yes upgrade