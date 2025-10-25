#AUR YAY
sudo pacman -S git base-devel
git clone https://aur.archlinux.org/yay-bin && cd yay-bin && makepkg -si

#Multilib
sudo sed -i s/'#[multilib]'/'[multilib]'/g /etc/pacman.conf 
sudo sed -i s/'#Include = /etc/pacman.d/mirrorlist'/'Include = /etc/pacman.d/mirrorlist'/g /etc/pacman.conf 
#sudo cp pacman.conf /etc/
sudo pacman -Syu

#locale
sudo sed -i s/'#en_US.UTF-8'/'en_US.UTF-8'/g /etc/locale.gen
sudo sed -i s/'#ru_RU.UTF-8'/'ru_RU.UTF-8'/g /etc/locale.gen
sudo locale-gen && localectl set-locale LANG=ru_RU.UTF-8

yay -Syu coolercontrol-bin protonup-qt kdeconnect dosfstools \
fastfetch inxi nvtop btop htop ffmpeg fish ntfs-3g flatpak mpv alsa-utils nftables \
steam transmission-qt code mangohud lib32-mangohud partitionmanager \
papirus-icon-theme imagemagick noto-fonts noto-fonts-cjk noto-fonts-emoji noto-fonts-extra gpu-screen-recorder-ui 

#nvidia
sudo pacman -S nvidia-dkms nvidia-utils lib32-nvidia-utils nvidia-settings \
lib32-opencl-nvidia opencl-nvidia libxnvctrl lib32-vulkan-icd-loader libva-nvidia-driver

wget https://raw.githubusercontent.com/Bunnysword/Confiles/refs/heads/main/configurations.sh
chmod 750 configurations.sh && ./configurations.sh
git clone https://github.com/Bunnysword/KDE-Sword-Configuration.git
cd KDE-Sword-Configuration/ && chmod 750 kdeswordtheme.sh && ./kdeswordtheme.sh

sudo systemctl enable --now coolercontrold
systemctl enable --now --user gpu-screen-recorder-ui


#yay -S alhp-keyring alhp-mirrorlist
#sudo cp pacman.conf /etc/
