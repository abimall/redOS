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
 

        echo -e "${Blue}***${Red}"##"${Green}#***${Yellow}#${Blue}*#${Yellow}#***#${Yellow}#***${Purple}#**${Cyan}*#***#***#${Blue}##***#${Yellow}*#*#***${Purple}##***#***${Blue}#**${Purple}"
        echo ############################################################################
       
                sleep 1
             # обновление списка репозиториев и установка необходимых пакетов   
sudo dng update - y && sudo dnf install zsh python3  python3-pip ncdu dnf-plugins-core zip unzip  speedtest-cli  ncdu mc curl  zsh curl exa bat ncdu cifs-utils libgit2 cmake -y

            echo ############################################################################
            echo установка FZF
                  sleep 1
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install
            echo ############################################################################
            echo установка DUF
                 sleep 1
curl -LO https://github.com/muesli/duf/releases/download/v0.6.2/duf_0.6.2_linux_amd64.rpm &&  sudo rpm -i duf_0.6.2_linux_amd64.rpm  

           echo ############################################################################
           echo установка neofetch
                sleep 2
 curl https://raw.githubusercontent.com/dylanaraps/neofetch/7.1.0/neofetch > $HOME/neofetch.sh && sudo chmod +x $HOME/neofetch.sh
                sleep 2
            echo ############################################################################
            echo установка speedtest
git clone https://github.com/sivel/speedtest-cli.git && sudo pip3 install speedtest-cli
                sleep 1
           echo ############################################################################
           echo установка EXA
curl https://sh.rustup.rs -sSf | sh && wget -c https://github.com/ogham/exa/releases/download/v0.9.0/exa-linux-x86_64-0.9.0.zip && unzip exa-linux-x86_64-0.9.0.zip && sudo mv exa-linux-x86_64  /usr/local/bin/exa
         
           
           
           echo ############################################################################
           echo установка OhMyZsh
                 sleep 1
chsh -s /usr/bin/zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"







echo ######
echo ######
echo ######
echo ######
echo ######
echo ######
echo ######
    sleep 0.1
    echo -e  "${Blue}##############################"
        sleep 0.1
    echo -e  "${Red}#############################"
        sleep 0.1
    echo -e  "${Green}############################"
        sleep 0.1
    echo -e  "${Yellow}###########################"
        sleep 0.1
    echo -e  "${Purple}##########################"
        sleep 0.1
    echo -e  "${Cyan}#########################"
        sleep 0.1
    echo -e  "${Blue}########################"
        sleep 0.1
    echo -e  "${Green}#######################"
        sleep 0.1
    echo -e  "${Yellow}######################"
        sleep 0.1
    echo -e  "${Purple}#####################"
        sleep 0.1
    echo -e  "${Red}####################"
        sleep 0.1
    echo -e  "${Cian}###################"
        sleep 0.1
    echo -e  "${Blue}##################"
        sleep 0.1
    echo -e  "${Purple}#################"
        sleep 0.1
    echo -e  "${Yellow}################"
        sleep 0.1
    echo -e  "${Green}###############"
        sleep 0.1
    echo -e  "${Blue}##############"
        sleep 0.1
    echo -e  "${Red}#############"
        sleep 0.1
    echo -e  "${Purple}############"
        sleep 0.1
    echo -e  "${Red}###########"
        sleep 0.1
    echo -e  "${Blue}##########"
        sleep 0.1
    echo -e  "${Cian}#########"
        sleep 0.1
    echo -e  "${Yellow}########"
        sleep 0.1
    echo -e  "${Purple}#######"
        sleep 0.1
    echo -e  "${Red}######"
        sleep 0.1
    echo -e  "${Green}#####"
        sleep 0.1
    echo -e  "${Blue}####"
        sleep 0.1
    echo -e  "${Yellow}###"
        sleep 0.1
    echo -e  "${Blue}##"
        sleep 0.1
    echo -e  "${Purple}#"
        echo ######
echo ######
echo ######
echo ######
echo ######
echo ######
echo ######
    
        sleep 5
