ARG BUILD_FROM
FROM $BUILD_FROM

RUN \
    apt update &&\
    curl -s https://install.speedtest.net/app/cli/install.deb.sh | bash &&\
    apt-get install -y speedtest &&\
    rm -rf /var/lib/apt/lists/*

COPY rootfs /
