# DWM Debian Setup

## Setup Debian

### Debian Tips

On a fresh system it might be useful to add `contrib non-free`
to all entries in /apt/sources.list

### Installing DWM

First install all prerequisites:

```sh
sudo apt install make gcc libx11-dev libxft-dev libxinerama-dev xorg
```

Download latest dwm version \([all versions](https://dl.suckless.org/dwm/)\)
and extract:

```sh
wget https://dl.suckless.org/dwm/dwm-6.5.tar.gz
tar -xfc dwm*.tar.gz
```

DWM can be build with `sudo make clean install`
