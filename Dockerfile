FROM 32bit/debian
MAINTAINER asda (Andrey Mamaev)

ENV DIST deb32_82_19_130.tar.gz 

RUN apt-get update && apt-get install -y \
       wget


ENV SRV1CV8_REPOSITORY /opt/1C/repository

RUN mkdir /opt/dist && cd /opt/dist/ \
	&& wget https://dl.dropboxusercontent.com/u/3197086/${DIST} --no-check-certificate \
	&& tar xzf ${DIST} && dpkg -i *.deb && rm -rf *
	
RUN mkdir -p /var/log/1c/dumps && chmod -R 777 /var/log/1c

RUN mkdir ${SRV1CV8_REPOSITORY}
RUN chmod 777 ${SRV1CV8_REPOSITORY}
VOLUME ${SRV1CV8_REPOSITORY}

EXPOSE 1542
CMD ["/opt/1C/v8.2/i386/crserver","-d","/opt/1C/repository"]
