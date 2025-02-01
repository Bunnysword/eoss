#!/bin/bash

sudo pacman -Sy openrgb fastfetch inxi discord steam telegram-desktop transmission-qt nvtop btop code mangohud ffmpeg obs-studio flatpak partitionmanager 
yay -S coolercontrol-bin
flatpak install flathub -y net.davidotek.pupgui2
sudo systemctl enable --now coolercontrold
wget https://raw.githubusercontent.com/Bunnysword/Confiles/refs/heads/main/configurations.sh
chmod 750 configurations.sh && ./configurations.sh
