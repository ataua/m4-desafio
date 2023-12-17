FROM ubuntu/apache2:2.4-22.04_beta

RUN echo modulo4 > /etc/hostname
RUN apt-get update && apt-get install -y \
    less tree vim curl wget apache2-utils \
    net-tools iputils-ping