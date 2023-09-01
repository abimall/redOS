#!/bin/bash

sudo dnf install cifs-utils -y

    # укажите папку монтирования
read -p "укажите папку монтирования: " mount_path
sudo mkdir "$mount_path"

    # Введите адрес шары (эксэпэл: //192.168.1.1/share$ )
read -p "Введите адрес шары: " share_address


    # Введите имя пользователя
read -p "Введите имя пользователя: " username

    # Запрос пароля пользователя
read -s -p "Введите пароль пользователя: " password
    # Запись файла с логином и паролем от шары 
touch $HOME/.windowscredentials
echo "username="$username"" > $HOME/.windowscredentials
echo "password="$password"" >> $HOME/.windowscredentials
    # назначение прав только для владельца файла
sudo chmod 600 $HOME/.windowscredentials

    # Монтирование шары
#sudo mount.cifs "$share_address" "$mount_path" -o username="$username",password="$password"
sudo mount.cifs "$share_address" "$mount_path" -o credentials=$HOME/.windowscredentials 

###Отмонтировать сетевую SMB папку:
###sudo umount /mnt/sharefolder


    # Проверка успешного монтирования
if [ $? -eq 0 ]; then
  echo "Шара успешно смонтирована."
    # Автомонтирование шары при загрузке
sudo su -c "echo '"$share_address" "$mount_path" cifs user,rw,credentials=$HOME/.windowscredentials,iocharset=utf8,nofail,_netdev 0 0' >> /etc/fstab" 
else
  echo "Ошибка при монтировании шары."
fi
