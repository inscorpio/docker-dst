FROM --platform=linux/amd64 debian:latest

RUN dpkg --add-architecture i386 &&\
    apt-get update && \
    apt-get install -y \
        libc6:i386 \
        libgcc1:i386 \
        libcurl4-gnutls-dev:i386 \
        libstdc++6:i386 \
        libc6 \
        libgcc1 \
        libcurl4-gnutls-dev \
        libstdc++6 \
        locales \
        wget && \
    apt-get update && \
    apt-get clean all && \
    rm -rf /var/lib/apt/lists/* && \
    localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8

ENV STEAMCMD_DIR="/root/steamcmd"
ENV DST_DIR="/root/DST"
ENV CPU_MHZ=2400
ENV LANG en_US.UTF-8

# required
ENV CLUSTER_TOKEN=""
# cluster config
ENV CLUSTER_NAME=""
ENV CLUSTER_DESCRIPTION=""
ENV CLUSTER_PASSWORD=""
ENV MAX_PLAYERS=6
ENV GAME_MODE="survival"
ENV CLUSTER_KEY="Linyx"
ENV MASTER_PORT=10999
ENV CAVES_PORT=11000
# cluster dir or file
ENV CLUSTER_DIR_NAME="Cluster_1"
ENV KLEI_DIR="/root/.klei"
ENV CLUSTER_DIR="$KLEI_DIR/DoNotStarveTogether/$CLUSTER_DIR_NAME"
ENV CLUSTER_FILE="$CLUSTER_DIR/cluster.ini"
ENV CLUSTER_TOKEN_FILE="$CLUSTER_DIR/cluster_token.txt"
ENV CAVES_DIR="$CLUSTER_DIR/Caves"
ENV CAVES_SERVER_FILE="$CAVES_DIR/server.ini"
ENV CAVES_WORLD_FILE="$CAVES_DIR/worldgenoverride.ini"
ENV MASTER_DIR="$CLUSTER_DIR/Master"
ENV MASTER_SERVER_FILE="$MASTER_DIR/server.ini"
ENV MASTER_WORLD_FILE="$MASTER_DIR/worldgenoverride.ini"

WORKDIR /root

COPY scripts scripts

RUN chmod -R +x scripts/*

WORKDIR /root/scripts

RUN ./steamcmd-download.sh && \
    ./generate.sh && \
    find . -type f -name "*.sh" -exec {} \; && \
    ./dst-update.sh

CMD  ./dst-update.sh && ./dst-run.sh

EXPOSE 10998-11000/udp

VOLUME ["${KLEI_DIR}"]
