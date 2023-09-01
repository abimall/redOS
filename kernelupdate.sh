!#/bin/bash
echo версия вашего ядра $(uname -a)
echo "Хотите продолжить выполнение? (y/n)"

read choice

if [ "$choice" == "y" ] || [ "$choice" == "Y" ]; then
    echo "Продолжение обновления..."
    echo все команды выполняются от root 
    echo требуемый пароль - пароль пользователя root
    sleep 2
    su - -c 'dnf update -y'                             # обновление системы
    su - -c 'dnf install redos-kernels6-release -y'     # подключения раздела репозитория kernels6, если версия ядра изменилась - заменить redos-kernels6-release на текущую версию релиза
    su - -c 'dnf makecache'                             # обновления кэша пакетов
    sh - -c 'dnf update -y'                             # обновления ядра и ядрозависимых пакетов
    su - -c 'reboot'                                    # перезагрузка
    
elif [ "$choice" == "n" ] || [ "$choice" == "N" ]; then
    echo "Отмена обновления."
    exit 0
else
    echo "Некорректный выбор. Пожалуйста, введите 'y' или 'n'."
    exit 1
fi
