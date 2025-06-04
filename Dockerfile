# Сервер хранилища 1С 8.3
#
FROM debian:stable-slim

ENV DIST=server64_8_3_25_1560.zip


RUN apt-get update && apt-get install -y \
	wget unzip \
	&& rm -rf /var/lob/apt/lists/*


RUN wget https://storage.yandexcloud.net/pridex.backup/distr/${DIST} -P /tmp --no-check-certificate | wc -l > /number


RUN unzip /tmp/${DIST} -d /tmp && ls /tmp && \
	/tmp/setup-full-*-x86_64.run --mode unattended --enable-components config_storage_server,ru && \
	rm -rf /tmp/* && \
	rm -rf /var/lib/apt/lists/*


RUN mkdir -p /opt/1C/repository && \
	chmod 777 /opt/1C/repository && \
	mkdir -p /var/log/1c/dumps


VOLUME /opt/1C/repository

EXPOSE 1542
CMD ["/opt/1cv8/x86_64/8.3.25.1560/crserver","-d","/opt/1C/repository"]
