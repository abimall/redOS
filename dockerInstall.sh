!#/bin/bash
echo установка Docker-CE и Docker-Compose для redOS
sleep 3
sudo dnf -y update
#добавление репозитория Docker и усттановка необходимых пакетов
sudo dnf config-manager  --add-repo=https://download.docker.com/linux/centos/docker-ce.repo
sudo dnf install docker-ce docker-ce-cli containerd.io docker-compose-plugin
#включение в автозагрузку и запуск служб контейниризации
sudo systemctl enable docker.service
sudo systemctl enable containerd.service
sudo systemctl start docker
#добавить юзера в группу Docker
sudo usermod -aG docker $USER
#применить изменения группы
newgrp docker 
id -nG
echo установка DRY - терминального менеджера для управления Docker
sleep 3
curl -sSf https://moncho.github.io/dry/dryup.sh | sudo sh 
sudo chmod 755 /usr/local/bin/dry

docker run hello-world
