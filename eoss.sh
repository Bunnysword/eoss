#!/bin/bash

#pacman
yay -Syu fastfetch inxi steam telegram-desktop transmission-qt nvtop btop code mangohud lib32-mangohud ffmpeg obs-studio flatpak partitionmanager fish papirus-icon-theme imagemagick htop ntfs3g noto-fonts noto-fonts-cjk noto-fonts-emoji noto-fonts-extra mpv alsa-utils nftables gpu-screen-recorder-ui kdeconnect
#nvidia
sudo pacman -S nvidia-dkms nvidia-utils lib32-nvidia-utils nvidia-settings lib32-opencl-nvidia opencl-nvidia libxnvctrl lib32-vulkan-icd-loader libva-nvidia-driver

#aur
yay -S coolercontrol-bin protonup-qt && sudo systemctl enable --now coolercontrold

#flatpak
flatpak install flathub -y net.davidotek.pupgui2

wget https://raw.githubusercontent.com/Bunnysword/Confiles/refs/heads/main/configurations.sh
chmod 750 configurations.sh && ./configurations.sh

#systemctl enable --now --user gpu-screen-recorder-ui
git clone https://github.com/Bunnysword/KDE-Sword-Configuration.git
cd KDE-Sword-Configuration/ && chmod 750 kdeswordtheme.sh && ./kdeswordtheme.sh
#waybar hyprshot nftables hyprpolkitagent ntfs-3g
