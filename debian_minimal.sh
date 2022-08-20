#!/bin/bash
#Autor: Josh
opc=0
while [ $opc -ne 11 ] ; do

clear

echo 1. Instalar sudo
echo 2. Abrir usuario a sudoers
echo 3. Abrir sources.list: add contrib/non-free/BackPorts
echo 4. No instalar Recomendaciones y Sugeridos
echo 5. Instalar sistema base
echo 6. Instalar entorno de escritorio Xfce4
echo 7. Instalar soporte bluetooth y WiFi
echo 8. Instalar soporte multimedia
echo 9. Personalizacion: fuentes
echo 10. Ofimatica y Redes Sociales
echo 11. Salir
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
	apt install xserver-xorg-core xserver-xorg-input-all mtp-tools ntfs-3g gdebi gvfs gvfs-libs synaptic gnupg git build-essential make automake cmake autoconf wget hplip libatk-adaptor libgail-common gnome-themes-standard at-spi2-core meson libgirepository1.0-dev libgtk-3-dev python3 python3-gi gir1.2-rsvg-2.0 librsvg2-bin gir1.2-gtk-3.0 curl apt-transport-https p7zip-full policykit-1-gnome default-jdk system-config-printer
	;;
6) clear
	apt install lightdm lightdm-gtk-greeter-settings xfce4 xfce4-notifyd  xfce4-power-manager-plugins thunar-archive-plugin xarchiver ristretto tumbler neovim xfce4-screenshooter terminator simple-scan cheese atril firefox-esr-l10n-es-mx mousepad
	;;
7) clear
	apt install firmware-realtek bluez blueman network-manager network-manager-gnome
	;;
8) clear
	apt install pulseaudio alsa-tools pulseaudio-utils pulseaudio-module-bluetooth pavucontrol vlc vlc-l10n rhythmbox rhythmbox-plugins rhythmbox-plugin-alternative-toolbar gstreamer1.0-alsa gstreamer1.0-pulseaudio gstreamer1.0-plugins-base gstreamer1.0-plugins-good gstreamer1.0-plugins-ugly gstreamer1.0-plugins-bad gstreamer1.0-x gstreamer1.0-gtk3 gstreamer1.0-gl
	;;
9) clear
	apt install fonts-agave ttf-mscorefonts-installer fonts-noto-color-emoji fonts-noto-cjk fonts-ubuntu fonts-cascadia-code plank qt5ct qt5-style-plugins gtk2-engines-murrine gtk2-engines-pixbuf zsh htop neofetch
	;;
10) clear
	sudo apt -t bullseye-backports install aspell-es hunspell-es libreoffice-writer libreoffice-calc libreoffice-impress libreoffice-l10n-es libreoffice-gtk3 telegram-desktop
	;;
11) echo Saliendo...
	;;
*) echo $opc no es una opcion valida
	;;
esac
done