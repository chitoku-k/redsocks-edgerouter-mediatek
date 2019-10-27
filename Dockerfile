FROM debian:stretch

SHELL ["/bin/bash", "-c"]

RUN dpkg --add-architecture mipsel && \
    apt-get update && \
    apt-get install -y git crossbuild-essential-mipsel && \
    git clone 'https://github.com/darkk/redsocks.git' && \
    pushd redsocks && \
    mkdir libevent-dev && \
    pushd libevent-dev && \
    apt-get download libevent-dev:mipsel && \
    ar -x *.deb && \
    tar xf data.tar.xz && \
    popd && \
    CC="$(which mipsel-linux-gnu-gcc)" \
    CFLAGS='-I libevent-dev/usr/include' \
    LDFLAGS='-L libevent-dev/usr/lib/mipsel-linux-gnu' \
        make
