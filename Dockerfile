FROM ubuntu:18.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt upgrade -y && apt-get install sudo -y

RUN apt-get install -y\
    coreutils \
    bash \
    build-essential \
    nodejs \
    bzip2 \
    cargo \
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
    libcurl4-openssl-dev \
    postgresql \
    postgresql-client \
    postgresql-server-dev-all \
    openssl \
    mediainfo \
    wget \
    python3 \
    python3-dev \
    python3-pip \
    libreadline-dev \
    libssl-dev \
    libffi-dev \
    zipalign \
    sqlite3 \
    ffmpeg \
    libsqlite3-dev \
    zlib1g-dev \
    recoverjpeg \
    zip \
    unrar \
    megatools \
    libfreetype6-dev \
    procps \
    policykit-1 \
    p7zip-full \
    tree

RUN apt-get autoremove --purge
