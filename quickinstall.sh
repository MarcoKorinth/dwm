#!/bin/bash

echo "Installing dependencies..."
apt install make gcc libx11-dev libxft-dev libxinerama-dev xorg

echo "Installing dwm..."
dwmVersion="dwm-6.5.tar.gz"
wget https://dl.suckless.org/dwm/${dwmVersion}
tar -xfc ${dwmVersion}

echo "Generating xinitrc..."
echo "exec dwm" >$HOME/.xinitrc
