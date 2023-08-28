#!/bin/bash
echo разрешить SSH

sudo firewall-cmd --permanent --add-port=22/tcp
sudo sed -i 's/#Port 22/Port 22/' /etc/ssh/sshd_config
sudo sed -i 's/#PasswordAuthentication yes/PasswordAuthentication yes`/' /etc/ssh/sshd_config
sudo systemctl enable sshd
sudo systemctl start sshd
sudo systemctl status sshd
echo для подключения по ssh из любой ОС 
echo использукйте комманду следующего вида
echo ssh <userName>@<ip adress>
echo где <userName> и <ip adress>
echo следует заменит вашими данными
echo <userName> - имя пользователя с правами 
echo для подключения по SSH
echo <ip adress> адрес ПК к которому вы подключаетесь
IP4="$(hostname -I)"
echo ip адрес этого ПК "$(IP4)"
echo примером подключения для этого ПК будет:
echo ssh $USER@"$(IP4)"