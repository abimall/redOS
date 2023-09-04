#!/bin/bash

###############################################
###############################################
###############################################
Red='\033[0;31m'          # Red           #####
Green='\033[0;32m'        # Green         #####
Yellow='\033[0;33m'       # Yellow        #####
Blue='\033[0;34m'         # Blue          #####
Purple='\033[0;35m'       # Purple        #####
Cyan='\033[0;36m'         # Cyan          #####
Color_Off='\033[0m'       # Text Reset    #####
###############################################
###############################################
###############################################

echo -e "                       ${Red}разрешить и включить SSH${Purple}"
sleep 2
echo -e "$                      {Red}введите новый пароль для пользователя:${Green} $USER ${Color_Off}"

sudo passwd $USER
sudo firewall-cmd --permanent --add-port=22/tcp #разрешить 22 порт в фаерволе
sudo sed -i 's/#Port 22/Port 22/' /etc/ssh/sshd_config #включение 22 порта для sshd
sudo sed -i 's/#PasswordAuthentication yes/PasswordAuthentication yes/' /etc/ssh/sshd_config # разрешить вход по SSH по паролю
sudo systemctl enable sshd #включение sshd в автозагрузку
# перезапуск службы sshd
sudo systemctl stop sshd 
sudo systemctl start sshd 

#проверка статуста sshd
if systemctl is-active sshd >/dev/null 2>&1; then
    echo -e "${Green}  статус службы sshd.service :  "Активно""
else
    echo -e "${Green}  статус службы sshd.service : ${Red} "Неактивно""
fi
sleep 2

                               
                                  #  информация о SSH и данные для подключения
########################################################################################################                                  
echo -e "${Yellow}             ____ ____  _   _ ${Green}  _____             _     _               "
echo -e "${Yellow}            / ___/ ___|| | | |${Green} | ____|_ __   __ _| |__ | | ___          "
echo -e "${Yellow}            \___ \___ \| |_| |${Green} |  _| | |_ \ / _| | '_ \| |/ _ \         "
echo -e "${Yellow}             ___) |__) |  _  |${Green} | |___| | | | (_| | |_) | |  __/         "
echo -e "${Yellow}            |____/____/|_| |_|${Green} |_____|_| |_|\__,_|_.__/|_|\___|         "
echo -e "${Yellow}      ##############################################################"
echo -e "${Yellow}      ##############################################################"
echo -e "${Yellow}      ##             ${Green}Для подключения по ssh из любой ОС           ${Yellow}##"
echo -e "${Yellow}      ##                                                          ${Yellow}##"
echo -e "${Yellow}      ##      ${Green}использукйте комманду следующего вида               ${Yellow}##"
echo -e "${Yellow}      ##            ${Green}ssh <userName>@<ip adress>                    ${Yellow}##"
echo -e "${Yellow}      ##      ${Green}где ${Purple}<userName> и ${Blue}<ip adress>                        ${Yellow}##"
echo -e "${Yellow}      ##           ${Green}следует заменит вашими данными                 ${Yellow}##"
echo -e "${Yellow}      ##      ${Purple}<userName> - ${Green}- имя пользователя с правами           ${Yellow}##"
echo -e "${Yellow}      ##          ${Green}для подключения по SSH                          ${Yellow}##"
echo -e "${Yellow}      ##      ${Blue}<ip adress> ${Green}- адрес ПК к которому вы подключаетесь  ${Yellow}##"
echo -e "                  ${Green}ip адрес этого ПК "$(hostname -I)"                "
echo -e "${Yellow}      ##      ${Red}примером подключения для этого ПК будет:            ${Yellow}##"
echo -e "                          ${Red}ssh ${Purple}$USER@${Blue}"$(hostname -I)"                "    
echo -e "${Yellow}      ##############################################################"
echo -e "${Yellow}      ##############################################################"                     
