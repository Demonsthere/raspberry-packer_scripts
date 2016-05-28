#!/bin/bash -x
#Go Home
cd ~
#Remove existing pre-config files
sudo rm /etc/chef/client.rb
#Copy local files to the chef dir
sudo mv client.rb /etc/chef/
sudo mv validation.pem /etc/chef/
