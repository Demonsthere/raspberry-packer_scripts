#!/bin/bash -x
echo "%%%%%%%%%%%%%%%%%%%% Installing the Chef package %%%%%%%%%%%%%%%%%%%%%%%%%%%%"
sudo DEBIAN_FRONTEND=noninteractive apt-get -fuy -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" --force-yes install chef
echo "%%%%%%%%%%%%%%%%%%%%%%%% Downloading TihghVNCServer for remoteaccess %%%%%%%%%%%%%%%%%%%" 
sudo apt-get -fuy install tightvncserver
echo "%%%%%%%%%%%%%%%%%%%%%%%%  CleanUp after installing  %%%%%%%%%%%%%%%%%%%%%%"
sudo apt-get -y autoremove
sudo apt-get -y autoclean
