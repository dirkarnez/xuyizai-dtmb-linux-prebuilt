FROM debian:latest

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get upgrade

RUN apt-get update

RUN apt-get -y --no-install-recommends --allow-unauthenticated install \
   build-essential \
   git \
   zip \
   unzip \
   xz-utils \
   wget \
   curl \
   ca-certificates \
   make \
   bash \
   bc \
   libxml2 \
   libxslt-dev \
   wget \
   bzip2 \
   libomp-dev \
   gcc \
   g++ \
   pkg-config \
   libusb-1.0-0-dev


WORKDIR /usr/src/app

COPY . .   

RUN chmod +x ./build-in-docker.sh

# Print the UID and GID
CMD echo 'Inside Container:' && \
   echo 'User: $(whoami) UID: $(id -u) GID: $(id -g)' && \
   ls -la && \
   ./build-in-docker.sh




