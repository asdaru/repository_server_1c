# Сервер хранилища 1С 8.3
#
FROM debian:stable-slim

ENV DIST server64_8_3_22_2239


RUN apt-get update && apt-get install -y \
	wget \
	&& rm -rf /var/lob/apt/lists/*


ENV SRV1CV8_REPOSITORY /opt/1C/repository

RUN wget http://casa.ru/${DIST}.tar.gz -P /tmp --no-check-certificate | wc -l > /number


RUN tar xzf /tmp/${DIST}.tar.gz -C /tmp && \
	/tmp/setup-full-*-x86_64.run --mode unattended --enable-components config_storage_server,ru && \
	mkdir -p /var/log/1c/dumps && chmod -R 777 /var/log/1c && \
	rm -rf /tmp/* && \
	rm -rf /var/lib/apt/lists/*


RUN mkdir -p ${SRV1CV8_REPOSITORY}
RUN chmod 777 ${SRV1CV8_REPOSITORY}


VOLUME ${SRV1CV8_REPOSITORY}

EXPOSE 1542
CMD ["/opt/1cv8/x86_64/8.3.22.2239/crserver -d ${SRV1CV8_REPOSITORY}"]