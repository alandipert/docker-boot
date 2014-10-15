FROM ubuntu:12.04
MAINTAINER Alan Dipert <alan@dipert.org>

RUN apt-get update && apt-get -y upgrade

# OpenJDK 7
RUN apt-get -y -f install --no-install-recommends openjdk-7-jdk
RUN update-alternatives --config java

# boot(-pre)
RUN apt-get install -y wget
RUN wget -O /usr/bin/boot \
    https://github.com/tailrecursion/boot/releases/download/v2-r1/boot.sh \
    && chmod +x /usr/bin/boot

ENV BOOT_CHANNEL DEV
RUN boot -u

ENV BOOT_LOCAL_REPO /m2
RUN mkdir /m2

VOLUME ["/app"]

WORKDIR /app

ENTRYPOINT ["boot"]
