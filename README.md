# redOS
после установки redOS: 
1. откройте терминал
2. установите git
   
`sudo dnf makecache && dnf install git`

4. выполните колонирование репозитория && сделайте файлы типа .sh исполняемыми && выполните sshEnable.sh для включения ssh
   
'git clone https://github.com/dfyzicka/centOS.git && sudo chmod +x /centOS/*.sh && sh /centOS/sshEnable.sh'
