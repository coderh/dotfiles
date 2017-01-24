#!/bin/bash

sudo add-apt-repository ppa:mpstark/elementary-tweaks-daily
sudo add-apt-repository ppa:numix/ppa
sudo add-apt-repository ppa:moka/stable
sudo add-apt-repository ppa:yunnxx/elementary

sudo apt-get update

sudo apt-get install \
elementary-tweaks \
elementary-transparent-theme \
numix-icon-theme-circle \
faba-icon-theme moka-icon-theme \
faba-mono-icons
# elementary-dark-theme \
# elementary-white-theme \
# elementary-plastico-theme \
# elementary-harvey-theme \
# elementary-blue-theme \
# elementary-colors-theme \
# elementary-lion-theme \
# elementary-champagne-theme \
# elementary-milk-theme \
# elementary-emod-icons \
# elementary-elfaenza-icons \
# elementary-nitrux-icons \
# elementary-enumix-utouch-icons \
# elementary-plank-themes \
