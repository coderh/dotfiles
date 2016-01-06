#! /bin/bash

sudo mv /var/lib/dpkg/info/sogoupinyin.* /tmp/
sudo dpkg --remove --force-remove-reinstreq sogoupinyin 
sudo apt-get remove sogoupinyin
sudo apt-get autoremove && sudo apt-get autoclean
sudo apt-get -f install sogoupinyin