ARG BUILD_FROM
FROM $BUILD_FROM

RUN \
    cd /tmp &&\
    curl https://install.speedtest.net/app/cli/ookla-speedtest-1.2.0-linux-$(arch).tgz -o speedtest.tgz &&\
    tar zxvf speedtest.tgz &&\
    mv speedtest /usr/local/bin/ &&\
    rm -rf /tmp/*

COPY rootfs /
