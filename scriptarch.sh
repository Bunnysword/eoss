#AUR YAY
sudo pacman -S git base-devel
git clone https://aur.archlinux.org/yay-bin && cd yay-bin && makepkg -si

#Multilib
sudo sed -i s/'#[multilib]'/'[multilib]'/g /etc/pacman.conf
sudo pacman -Syu

#locale
sudo sed -i s/'#en_US.UTF-8'/'en_US.UTF-8'/g /etc/locale.gen
sudo sed -i s/'#ru_RU.UTF-8'/'ru_RU.UTF-8'/g /etc/locale.gen
sudo locale-gen && localectl set-locale LANG=ru_RU.UTF-8

yay -Syu coolercontrol-bin protonup-qt kdeconnect dosfstools rar zen-browser-bin  \
fastfetch inxi nvtop btop htop ffmpeg fish ntfs-3g flatpak mpv alsa-utils nftables \
steam transmission-qt code mangohud lib32-mangohud partitionmanager libva amd-ucode plasma6-wallpapers-smart-video-wallpaper-reborn \
papirus-icon-theme imagemagick noto-fonts noto-fonts-cjk noto-fonts-emoji noto-fonts-extra gpu-screen-recorder-ui 

#nvidia
sudo pacman -S nvidia-dkms nvidia-utils lib32-nvidia-utils nvidia-settings \
lib32-opencl-nvidia opencl-nvidia libxnvctrl lib32-vulkan-icd-loader libva-nvidia-driver

wget https://raw.githubusercontent.com/Bunnysword/Confiles/refs/heads/main/configurations.sh
chmod 750 configurations.sh && ./configurations.sh

sudo systemctl enable --now coolercontrold
systemctl enable --now --user gpu-screen-recorder-ui


#yay -S alhp-keyring alhp-mirrorlist
#sudo cp pacman.conf /etc/
