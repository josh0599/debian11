#!/bin/bash
#Autor: Josh
opc=0
while [ $opc -ne 6 ] ; do

clear

echo 1. Install OhMyZSH
echo 2. Default shell: zsh
echo 3. Configure user: Lightdm
echo 4. Install zsh-autosuggestions
echo 5. Install zsh-syntax-highlighting
echo 6. Exit
echo
read -p "select an option " opc

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
6) echo bye!
	;;
*) clear
	echo Invalid option
	;;
esac
done