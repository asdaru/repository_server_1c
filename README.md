# Контейнер с 1С сервером хранилища 8.2

Для запуска контейнера

```
docker run  /путь/к/каталогу/с/хранилищем/каталогу:/opt/1C/repository -d -i -t -p 1542:1542 --restart=always --name repository_1c  asdaru/repository_1c
```
