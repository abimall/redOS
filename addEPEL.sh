#!/bin/bash

sudo dnf update
sudo dnf config-manager --set-enabled crb
sudo dnf install epel-release epel-next-release
echo установлены EPEL репозитории
dnf repolist | grep epel
