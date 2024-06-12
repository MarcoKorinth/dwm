#!/bin/bash

echo "Installing dependencies..."
sudo apt install make gcc libx11-dev libxft-dev libxinerama-dev xorg

echo "Installing dwm..."
dwmVersion="dwm-6.5.tar.gz"
wget https://dl.suckless.org/dwm/${dwmVersion}
tar -xzf ${dwmVersion}

echo "Generating xinitrc..."
echo "xrdb -merge ~/.Xresources" >$HOME/.xinitrc
echo "exec dwm" >>$HOME/.xinitrc
