FROM alpine:3.10

RUN apk update && \ 
    # Add testing and other package repositories 
    echo "@edge http://nl.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories && \
    echo "@testing http://nl.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && \
    echo "@community http://nl.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories && \
    apk --no-cache add --update \
    file \
    strace \
    apache2-utils \
    iperf \
    tcpdump \
    nmap \
    speedtest-cli \
    curl \
    pv \
    procps \
    vim 
