#!/bin/bash
# ngrok v6.sparkz
# Coded by: sparkz-technology (You dont become a coder by just changing the credits)
# Github: https://github.com/sparkz-technology/ngrok
menu() {
trap 'printf "\n";stop;exit 1' 2

stop() {
exit 1

}


sleep 0.5

exit 1
sleep 0.5
}
printf "\n"
start() {

if [[ -e ngrok ]]; then
echo -e "\e[1;34m"
printf "Ngrok is already download in your device"
./ngrok http 80
printf "\n"
else

printf "\e[1;92m[\e[0m*\e[1;92m] Downloading Ngrok...\n"
echo -e "\e[1;31m"
wget --no-check-certificate https://github.com/Sparkz-technology/ngrok-arm/raw/master/ngrok > /dev/null 2>&1

chmod +x ngrok
./ngrok http 80
printf "\e[1;94m Download done......... \e[0m\n"
exit 1
fi

sleep 1

}

start1() {

default_option_server="y"
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Choose a option to Download ngrok (y/n): \e[0m\e[1;92m' option_server
option_server="${option_server:-${default_option_server}}"
if [[ $option_server == n || $option_server == N ]]; then
clear
exit

elif [[ $option_server == y || $option_server == Y ]]; then
start
else
printf "\e[1;93m [!] Invalid option! Try !!!\e[0m\n"
sleep 2
clear
toilet -f  mono12 NGROK  | lolcat

echo -e "\e[1;34m Created By @sparkz_technology \e[1;31m              v6.sparkz"

start1
fi

}

sleep 1

echo -e "\e[1;32m"
toilet -f  mono12 NGROK  | lolcat

echo -e "\e[1;34m Created By @sparkz_technology \e[1;31m              v6.sparkz"


start1
menu

}
menu

