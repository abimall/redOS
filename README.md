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

* sshEnable.sh - включить доступ по ssh - выполняет настройку sshd и firewall

* dockerInstall.sh - установка Docker-CE и Docker-Compose для redOS, а также терминальный менеджер управление для docker - dry

* kernelupdate.sh - обновление ядра RedOS - в текущем релизк до 6.1.ХХ

* mcskin.sh замена стандартной нечитаемой цветовой схемы MC на более userFriendlyInterface 

* shareMount.sh подключение шар windows  - после запуска следовать инструкциям


# установка ohMyZshPowerLevel10k

* ohmyzsh1.sh - запускать первым установка необходимых пакетов и ohMyZsh

* ohmyzsh2.sh - запускать после ohmyzsh2.sh - установка PowerLevel10k необходимых пакетов и копирование файлов конфигурации  

