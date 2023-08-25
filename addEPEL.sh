#!/bin/bash

sudo dnf update
sudo dnf config-manager --set-enabled crb
sudo dnf install epel-release epel-next-release -y
echo установлены EPEL репозитории
dnf repolist | grep epel
sleep 3
sudo dnf upgrade -y && sudo dnf install python3  python3-pip ncdu dnf-plugins-core zip unzip  speedtest-cli tldr ncdu mc curl  zsh curl exa bat ncdu cifs-utils -y
mc

#dnf config-manager --set-disabled <repo>