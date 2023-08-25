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

sudo mv confF/ex.nanorc confF/.nanorc
        sleep 1
sudo mv confF/ex.zshrc confF/.zshrc
        sleep 1
sudo mv confF/ex.p10k.zsh  confF/.p10k.zsh
        
sudo cp confF/.* $HOME
# замена скина MC
mkdir -p $HOME/.local/share/mc/skins && mkdir -p $HOME/.config/mc/ cp -r mcskin/* $HOME/.local/share/mc/skins
cp -r mcskin/* $HOME/.local/share/mc/skins && cp mcskin/ini $HOME/.config/mc/
                sleep 1
sed -i 's/skin=default/skin=dracula256/' $HOME/.config/mc/ini 




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
