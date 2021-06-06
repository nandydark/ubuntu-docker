FROM ubuntu:18.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt upgrade -y && apt-get install sudo -y

RUN apt-get install -y\
    coreutils \
    bash \
    nodejs \
    bzip2 \
    curl \
    figlet \
    gcc \
    g++ \
    git \
    util-linux \
    libevent-dev \
    libjpeg-dev \
    libffi-dev \
    libpq-dev \
    libwebp-dev \
    libxml2 \
    libxml2-dev \
    libxslt-dev \
    musl \
    neofetch \
    xfce4 \
    xfce4-terminal

RUN apt-get autoremove --purge

RUN wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb

RUN sudo dpkg -i chrome*

RUN sudo apt-get install -f
