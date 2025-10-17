#AUR YAY
sudo pacman -S git base-devel
git clone https://aur.archlinux.org/yay-bin && cd yay-bin && makepkg -si

#Multilib
sudo sed -i s/'#[multilib]'/'[multilib]'/g /etc/pacman.conf 
sudo sed -i s/'#Include = /etc/pacman.d/mirrorlist'/'Include = /etc/pacman.d/mirrorlist'/g /etc/pacman.conf 

sudo sed ' \
[core-x86-64-v4] \
Include = /etc/pacman.d/alhp-mirrorlist \

[core] \
Include = /etc/pacman.d/mirrorlist \

[extra-x86-64-v4] \
Include = /etc/pacman.d/alhp-mirrorlist \

[extra] \
Include = /etc/pacman.d/mirrorlist \

[multilib-x86-64-v4] \
Include = /etc/pacman.d/alhp-mirrorlist \

[multilib] \
Include = /etc/pacman.d/mirrorlist \

#[core-testing] \
#Include = /etc/pacman.d/mirrorlist \

[core] \
Include = /etc/pacman.d/mirrorlist \

#[extra-testing] \
#Include = /etc/pacman.d/mirrorlist \

[extra] \
Include = /etc/pacman.d/mirrorlist \

' /etc/pacman.conf 


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

#flatpak
flatpak install flathub -y net.davidotek.pupgui2

wget https://raw.githubusercontent.com/Bunnysword/Confiles/refs/heads/main/configurations.sh
chmod 750 configurations.sh && ./configurations.sh
git clone https://github.com/Bunnysword/KDE-Sword-Configuration.git
cd KDE-Sword-Configuration/ && chmod 750 kdeswordtheme.sh && ./kdeswordtheme.sh

sudo systemctl enable --now coolercontrold
systemctl enable --now --user gpu-screen-recorder-ui
