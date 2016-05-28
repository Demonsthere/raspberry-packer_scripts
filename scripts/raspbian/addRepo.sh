#!/bin/bash -x
echo "Add Ubuntu repo"
cat /etc/apt/sources.list
#sudo sed -i 's/wheezy/jessie/g' /etc/apt/sources.list
#echo "deb http://ports.ubuntu.com/ubuntu-ports vivid main" >> /etc/apt/sources.list
gpg --keyserver pgpkeys.mit.edu --recv-key  3B4FE6ACC0B21F32      
gpg -a --export 3B4FE6ACC0B21F32 | sudo apt-key add -
gpg --keyserver pgpkeys.mit.edu --recv-key  40976EAF437D05B5      
gpg -a --export 40976EAF437D05B5 | sudo apt-key add -
cat /etc/apt/sources.list