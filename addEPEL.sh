#!/bin/bash

sudo dnf update
sudo dnf config-manager --set-enabled crb
sudo dnf install epel-release epel-next-release
echo установлены EPEL репозитории
dnf repolist | grep epel
sleep 3
sudo dnf upgrade -y && sudo dnf install python3  python3-pip zip unzip neofetch speedtest-cli tldr ncdu mc curl  zsh curl exa bat ncdu cifs-utils -y
mc

