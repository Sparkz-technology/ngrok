#!/bin/bash

#selecting arch
arch=$(dpkg --print-architecture)
#selecting commands
update="apt update -y >/dev/null"
upgrade="apt upgrade -y >/dev/null"
iwget="apt install wget zip unzip figlet -y"
#simple condition sentence

sleep 5
if [ $arch == 'aarch64' ]
then 
echo -e "\033[92m[•] \033[93mInstalling the requirements... "
#require
echo -e "\033[92m"
toilet -f mono12 ngrok
echo -e "\033[94m"
toilet -f mono12 For
echo -e "\033[95m"
toilet $arch
wget "https://bin.equinox.io/a/nmkK3DkqZEB/ngrok-2.2.8-linux-arm64.zip"
unzip "ngrok-2.2.8-linux-arm64.zip"
chmod 777 ngrok
else 
echo -e "\033[92m[•] \033[93mInstalling the requirements... "
#require
echo -e "\033[92m"
toilet -f mono12 ngrok
echo -e "\033[94m"
toilet -f mono12 For
echo -e "\033[95m"
figlet $arch
wget https://github.com/sparkz-technology/ngrok-arm/raw/master/ngrok-arm
mv ngrok-arm ngrok
chmod 777 ngrok
fi
echo -e """\033[92m 
ngrok has been installed successfully 
"""
