FROM php:7.1.19-fpm

RUN apt-get update && apt-get install -y libmcrypt-dev mysql-client \
    && docker-php-ext-install mcrypt pdo_mysql \
    && apt-get install -y python

ADD ./docker/simplewap.php.ini /usr/local/etc/php/php.ini

RUN curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl

RUN chmod a+rx /usr/local/bin/youtube-dl

WORKDIR /var/www