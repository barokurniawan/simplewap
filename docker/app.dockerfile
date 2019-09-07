FROM php:7.1.19-fpm

RUN apt-get update && apt-get install -y libmcrypt-dev mysql-client \
    && docker-php-ext-install mcrypt pdo_mysql

ADD ./docker/simplewap.php.ini /usr/local/etc/php/php.ini

WORKDIR /var/www