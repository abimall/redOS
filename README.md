# redOS
после установки redOS: 
1. откройте терминал
2. установите git

```
sudo dnf makecache && dnf install git
```

4. выполните колонирование репозитория && сделайте файлы типа .sh исполняемыми && выполните sshEnable.sh для включения ssh
   
`git clone https://github.com/abimall/redOS.git && sudo chmod +x /redOS/*.sh && sh /redOS/sshEnable.sh`
