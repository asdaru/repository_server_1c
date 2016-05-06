# Контейнер с 1С сервером 8.2

Для запуска контейнера
NH_SERVER_ADDR - адреса ваших серверов с hasp ключами

```
docker run  /путь/к/каталогу/с/хранилищем/каталогу:/opt/1C/repository -d -i -t -p 1542:1542 --restart=always --name repository_1c  asdaru/repository_1c
```
