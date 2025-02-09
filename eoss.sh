#!/bin/bash

sudo pacman -Sy openrgb fastfetch inxi discord steam telegram-desktop transmission-qt nvtop btop code mangohud lib32-mangohud ffmpeg obs-studio flatpak partitionmanager fish
sudo pacman -S nvidia-open-dkms nvidia-utils lib32-nvidia-utils nvidia-settings lib32-opencl-nvidia opencl-nvidia libxnvctrl lib32-vulkan-icd-loader libva-nvidia-driver
yay -S coolercontrol-bin
flatpak install flathub -y net.davidotek.pupgui2
sudo systemctl enable --now coolercontrold
wget https://raw.githubusercontent.com/Bunnysword/Confiles/refs/heads/main/configurations.sh
chmod 750 configurations.sh && ./configurations.sh
