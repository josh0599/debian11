#!/bin/bash
#Autor: Josh
opc=0
while [ $opc -ne 6 ] ; do

clear

echo 1. Instalar OhMyZSH
echo 2. Establecer ZSH como shell por defecto
echo 3. Usuario por defecto Lightdm
echo 4. zsh-autosuggestions
echo 5. zsh-syntax-highlighting
echo 6. salir
echo
read -p "Seleccione una opcion: " opc

case $opc in

1) clear
	wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
	;;
2) clear
	chsh -s `which zsh`
	;;
3) clear
	nano /usr/share/lightdm/lightdm.conf.d/01_debian.conf
	;;
4) clear
	git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
	;;
5) clear
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
	;;
6) echo Saliendo...
	;;
*) clear
	echo Error al elegir opciones
	;;
esac
done