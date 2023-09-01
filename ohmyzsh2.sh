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
#колонирование плагинов zsh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k 
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting 
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions 
          sleep 1

#переименование файлов конфигурации в каталоге redos/confF
echo перенос файлов конфигурации
        sleep 2
mv confF/ex.nanorc confF/.nanorc
        sleep 1
mv confF/ex.zshrc confF/.zshrc
        sleep 1
mv confF/ex.p10k.zsh  confF/.p10k.zsh
        sleep 1  

#копирование файлов конфигурации в домашнюю деррикторию пользователя $HOME
cp -R confF/.* $HOME
sudo cp -R confF/.nanorc $HOME
#создаётся алиас для neofetch
echo 'alias neofetch="sh $HOME/neofetch.sh"' >> $HOME/.zshrc


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
zsh
