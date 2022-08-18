ARG BUILD_FROM
FROM $BUILD_FROM

ARG BUILD_ARCH
ENV BUILD_ARCH=$BUILD_ARCH

RUN \
    cd /tmp &&\
    arch=$(echo $BUILD_ARCH | sed s/armhf/armel/ | sed s/armv7/armhf/ | sed s/amd64/x86_64/ ) && \
    curl https://install.speedtest.net/app/cli/ookla-speedtest-1.2.0-linux-${arch}.tgz -o speedtest.tgz &&\
    tar zxvf speedtest.tgz &&\
    mv speedtest /usr/local/bin/ &&\
    rm -rf /tmp/*

COPY rootfs /
