# Контейнер с 1С сервером хранилища 8.3
### Текущая версия 8.3.10.2580

### Доступные версии
* 8.3.10.2580,latest

Для запуска контейнера

```
docker run -v /путь/к/каталогу/с/хранилищем:/opt/1C/repository -d -i -t -p 1542:1542 --privileged=true --restart=always --name repository_server_1c  asdaru/repository_server_1c
```

