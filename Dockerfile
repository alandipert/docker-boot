FROM pandeiro/oracle-jdk8
MAINTAINER Alan Dipert <alan@dipert.org>

RUN wget -O /usr/bin/boot \
    https://github.com/tailrecursion/boot/releases/download/v2-r1/boot.sh \
    && chmod +x /usr/bin/boot

RUN boot

VOLUME ["/project"]

WORKDIR /project

ENTRYPOINT ["boot"]
