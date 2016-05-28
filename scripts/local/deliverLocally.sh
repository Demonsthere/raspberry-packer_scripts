#!/bin/bash -x
echo '%%%%%%%%%%%%%%%% UNPACKING THE CHEF COOKBOOK ARCHIVE %%%%%%%%%%%%%%%%%'
unzip -u localDelivery.zip
cd localDelivery
echo '%%%%%%%%%%%%%%%%% RUNNING CHEF AS LOCAL NODE %%%%%%%%%%%%%%%%%%%%%%%%%'
sudo chef-solo -c solo.rb -j node.json -l debug