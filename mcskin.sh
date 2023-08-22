#!/bin/bash/
mkdir -p $HOME/.local/share/mc/skins && cp -r mcskin/* $HOME/.local/share/mc/skins
                sleep 1
mkdir -p $HOME/.config/mc/
                sleep 1
cp mcskin/ini $HOME/.config/mc/
                sleep 1
sed -i 's/skin=default/skin=dracula256/' $HOME/.config/mc/ini 
        echo #############################################################
        echo mc skins установлены
        echo #############################################################
        sleep 3
mc
