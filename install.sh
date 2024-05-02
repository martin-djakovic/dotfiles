#!/bin/bash

# THIS SCRIPT IS NOT JUST FOR INSTALLING MY I3 THEME!!!
# IT ALSO INSTALLS PACKAGES WHICH YOU PROBABLY DON'T NEED,
# AND THEY MIGHT EVEN BREAK YOUR SYSTEM
# IT IS FOR MY PERSONAL USE ONLY
# DO NOT RUN THIS SCRIPT

apt install software-properties-common -y
apt-add-repository non-free -y
apt-add-repository contrib -y
dpkg --add-architecture i386

echo "deb https://apt.enpass.io/ stable main" > \
  /etc/apt/sources.list.d/enpass.list
wget -O - https://apt.enpass.io/keys/enpass-linux.key | tee /etc/apt/trusted.gpg.d/enpass.asc
apt update

wget https://launcher.mojang.com/download/Minecraft.deb
wget https://github.com/shiftkey/desktop/releases/download/release-3.3.1-linux1/GitHubDesktop-linux-amd64-3.3.1-linux1.deb

apt install xorg i3 nvidia-driver nvidia-settings nvidia-driver-libs:i386 pulseaudio alsa-utils steam gimp inkscape lxappearance thunderbird firefox-esr alacritty thunar vim git unzip shotwell celluloid gvfs-backends samba cifs-utils smbclient rofi i3blocks lightdm feh picom xinput maim xclip xdotool libsdl2-2.0-0 libsdl2-dev libsdl2-image-2.0-0 libsdl2-image-dev libsdl2-ttf-2.0-0 libsdl2-ttf-dev libsdl2-mixer-2.0-0 libsdl2-mixer-dev gtk2-engines-murrine gtk2-engines-pixbuf rhythmbox xautolock htop libavcodec-extra playerctl gnome-disk-utility gufw enpass libreoffice libreoffice-gtk3 printer-driver-hpcups gamemode openvpn openssl openresolv transmission-gtk rsync timeshift pavucontrol gdb flatpak galculator mousepad python3.11-venv ./Minecraft.deb ./GitHubDesktop-linux-amd64-3.3.1-linux1.deb -y
apt install --no-install-recommends lxsession lxpolkit -y
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install com.discordapp.Discord
apt autoremove dmenu xterm libreoffice-math libreoffice-draw libreoffice-draw libreoffice-impress libreoffice-base -y

curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
mkdir -p /opt/nvim
mv nvim.appimage /opt/nvim/nvim

mkdir -p /home/martin/.local/share/
cp .Xresources /home/martin/
cp -r themes/ /usr/share/
cp -r wallpapers/ /home/martin/.local/share/
cp -r icons/ /home/martin/.local/share/
cp .bashrc /home/martin/
cp .vimrc /home/martin/
cp lightdm.conf /etc/lightdm/
cp -r alacritty/* /home/martin/.config/
cp -r picom/ /home/martin/.config/
cp -r i3/ /home/martin/.config/
#cp -r polybar/ /home/martin/.config/
cp -r i3blocks/ /home/martin/.config/
cp -r dunst/ /home/martin/.config/
cp -r rofi/ /home/martin/.config/
cp -r nvim/ /home/martin/.config/
mkdir -p /home/martin/Pictures/screenshots

chown -R martin:martin /home/martin/.local
chown -R martin:martin /home/martin/.config
chown -R martin:martin /home/martin/.Xresources
chown -R martin:martin /home/martin/Pictures/screenshots
chown -R martin:martin /opt/nvim/nvim

timedatectl set-local-rtc 0

xdg-settings set default-web-browser firefox-esr.desktop
xdg-mime default thunar.desktop inode/directory
xset s off

mkdir /boot/grub/theme
cp -r grub-theme-debian/* /boot/grub/theme/
cp -r .fonts/ /home/martin/
cp grub /etc/default/

chown root:root /etc/default/grub
chown -R root:root /boot/grub/theme/
chown root:root /home/martin/.config/i3/vpn.sh
chmod -w /etc/default/grub
chmod -w /home/martin/.config/i3/vpn.sh

update-grub

echo "Set theme with lxappearance"
echo "Don't forget to copy VPN files to /etc/openvpn"
echo "Set up Timeshift and set rsync destination in i3/config"
echo "Add @reboot sleep 10 && /usr/bin/apt-get update to sudo crontab -e"
