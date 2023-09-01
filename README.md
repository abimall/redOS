# redOS
после установки redOS: 
1. откройте терминал
2. установите git
```
sudo dnf makecache && dnf install git
```
4. выполните колонирование репозитория && сделайте файлы типа .sh исполняемыми && выполните sshEnable.sh для включения ssh
```  
git clone https://github.com/abimall/redOS.git && sudo chmod +x redOS/*.sh && sh redOS/sshEnable.sh
```

# что делают скрипты
dockerInstall.sh установка Docker-CE и Docker-Compose для redOS

* kernelupdate.sh обновление ядра

* mcskin.sh замена стандартной нечитаемой цветовой схемы MC

* ohmyzsh1.sh запускать первым установка необходимых пакетов и ohMyZsh

* ohmyzsh2.sh запускать после ohmyzsh2.sh

* shareMount.sh подключение шар windows

* sshEnable.sh включить доступ по ssh
