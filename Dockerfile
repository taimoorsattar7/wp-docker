FROM ubuntu:16.04
#MAINTAINER Taimoor Sattar <taimoorsattar7@gmail.com>

# Keep upstart from complaining
# RUN dpkg-divert --local --rename --add /sbin/initctl
# RUN ln -sf /bin/true /sbin/initctl

# Let the conatiner know that there is no tty
ENV DEBIAN_FRONTEND noninteractive

# apt stuff
RUN apt-get -qq update
RUN apt-get -qq upgrade

RUN	apt-get -y install software-properties-common language-pack-en-base


RUN	add-apt-repository ppa:nginx/stable && \
    apt-get -y install nginx curl unzip

ENV LANG C.UTF-8

RUN add-apt-repository ppa:ondrej/php

RUN apt-get -qq update

# https://www.colinodell.com/blog/201812/how-install-php-73
RUN apt-get -y install php7.2-fpm php7.2-common php7.2-mbstring php7.2-xmlrpc php7.2-gd php7.2-xml php7.2-mysql php7.2-cli php7.2-zip php7.2-curl


