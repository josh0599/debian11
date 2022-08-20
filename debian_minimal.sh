#!/bin/bash
#Autor: Josh
opc=0
while [ $opc -ne 16 ] ; do

clear

echo 1. Install sudo
echo 2. Add user to sudoers
echo 3. Open sources.list: add contrib/non-free/BackPorts
echo 4. Not install Recommendas and Suggests
echo 5. Install System base: xorg, mtp and ntfs support, git
echo 6. Install desktop enviroment: Xfce4
echo 7. Install bluetooth support
echo 8. Install Network-manager
echo 9. Install WiFi drivers: Realtek only
echo 10. Install multimedia support and apps: rhythmbox, vlc and codecs
echo 11. Install fonts: ms-fonts, noto-fonts, ubuntu-fonts
echo 12. Install Browser: firefox
echo 13: Install Office apps: LibreOffice
echo 14. Install Social apps: Telegram
echo 15. Customization: zsh, neofetch, htop, qt5 support
echo 16. Exit
echo
read -p "Seleccione una opcion: " opc

case $opc in

1) clear
	apt update && apt install sudo
	;;
2) clear
	nano /etc/sudoers
	;;
3) clear
	nano /etc/apt/sources.list
	;;
4) clear
	cp 01norecommend /etc/apt/apt.conf.d/
	;;
5) clear
	apt update && apt install xserver-xorg-core xserver-xorg-input-all mtp-tools ntfs-3g gvfs gvfs-libs gnome-keyring gvfs-backends gnupg git build-essential make automake cmake autoconf wget hplip libatk-adaptor libgail-common gnome-themes-standard at-spi2-core meson libgirepository1.0-dev libgtk-3-dev python3 python3-gi gir1.2-rsvg-2.0 librsvg2-bin gir1.2-gtk-3.0 curl apt-transport-https p7zip-full rar unrar policykit-1-gnome default-jdk system-config-printer
	;;
6) clear
	apt install lightdm lightdm-gtk-greeter-settings light-locker xfce4 xfce4-notifyd gdebi synaptic xfce4-power-manager-plugins thunar-archive-plugin xarchiver ristretto tumbler neovim xfce4-screenshooter terminator simple-scan cheese atril mousepad
	;;
7) clear
	apt install bluetooth bluez blueman
	;;
8) clear
	apt install network-manager network-manager-gnome
	;;
9) clear
	apt install firmware-realtek 
	;;
10) clear
	apt install pulseaudio alsa-tools pulseaudio-utils pulseaudio-module-bluetooth pavucontrol vlc vlc-l10n rhythmbox rhythmbox-plugins rhythmbox-plugin-alternative-toolbar gstreamer1.0-alsa gstreamer1.0-pulseaudio gstreamer1.0-plugins-base gstreamer1.0-plugins-good gstreamer1.0-plugins-ugly gstreamer1.0-plugins-bad gstreamer1.0-x gstreamer1.0-gtk3 gstreamer1.0-gl
	;;
11) clear
	apt install fonts-agave ttf-mscorefonts-installer fonts-noto-color-emoji fonts-noto-cjk fonts-ubuntu fonts-cascadia-code
	;;
12) clear
	apt install firefox-esr-l10n-es-mx
	;;
13) clear
	apt -t bullseye-backports install aspell-es hunspell-es libreoffice-writer libreoffice-calc libreoffice-impress libreoffice-l10n-es libreoffice-gtk3
	;;
14) clear
	apt -t bullseye-backports install telegram-desktop
	;;
15) clear
	apt install plank qt5ct qt5-style-plugins gtk2-engines-murrine gtk2-engines-pixbuf zsh htop neofetch
	;;
16) echo bye!
	;;
*) echo $opc is not a valid option
	;;
esac
done