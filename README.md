# Контейнер с 1С сервером хранилища 8.2

Для запуска контейнера

```
docker run -v /путь/к/каталогу/с/хранилищем:/opt/1C/repository -d -i -t -p 1542:1542 --restart=always --name repository_server_1c  asdaru/repository_server_1c
```
