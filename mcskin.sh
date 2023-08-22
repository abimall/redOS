#!/bin/bash/
mkdir -p /home/dfyz/.local/share/mc/skins && cp -r mcSkins/skins/* /home/dfyz/.local/share/mc/skins
                sleep 1
mkdir -p /home/dfyz/.config/mc/
                sleep 1
cp ini /home/dfyz/.config/mc/
                sleep 1
sed -i 's/skin=default/skin=dracula256/' /home/dfyz/.config/mc/ini 
        echo #############################################################
        echo mc skins установлены
        echo #############################################################
