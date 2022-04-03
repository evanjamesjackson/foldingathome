FROM ubuntu:20.04

ARG TZ

ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=$TZ
RUN apt-get update && apt-get install --no-install-recommends vim bzip2 cron tzdata -y

COPY docker-entrypoint.sh /
COPY crontab /

ADD https://download.foldingathome.org/releases/public/release/fahclient/debian-stable-64bit/v7.6/fahclient_7.6.21_amd64.deb /fahclient.deb
RUN dpkg -x ./fahclient.deb ./deb &&\
 mv deb/usr/bin/* /usr/bin &&\
 rm -rf *.deb &&\
 rm -rf deb &&\
 chmod u+x /docker-entrypoint.sh &&\
 rm -rf /var/lib/apt/lists/*

WORKDIR /var/lib/fahclient

ENTRYPOINT ["/docker-entrypoint.sh"]

