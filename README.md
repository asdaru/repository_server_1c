# Контейнер с 1С сервером хранилища 8.3
### Текущая версия 8.3.14.1694

### Доступные версии
* 8.3.14.1694,latest
* 8.3.13.1644
* 8.3.10.2580
* 8.2

Для запуска контейнера

```
docker run -v /путь/к/каталогу/с/хранилищем:/opt/1C/repository -d -i -t -p 1542:1542 --privileged=true --restart=always --name repository_server_1c  asdaru/repository_server_1c
```

