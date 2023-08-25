#!/bin/bash
echo разрешить SSH
sudo firewall-cmd --permanent --add-port=22/tcp
sudo sed -i 's/#Port 22/Port 22/' /etc/ssh/sshd_config
sudo sed -i 's/#PasswordAuthentication yes/PasswordAuthentication yes`/' /etc/ssh/sshd_config
