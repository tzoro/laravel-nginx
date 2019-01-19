FROM php:7.2-fpm
RUN apt-get update
RUN apt-get install -y git \
                        libmcrypt-dev \
                        libfreetype6-dev \
                        libjpeg62-turbo-dev

RUN docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include
RUN docker-php-ext-install mbstring zip gd pdo_mysql

RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer
RUN composer global require "laravel/installer=~2.0.1"

RUN mkdir -p /var/www/laravel-app
WORKDIR /var/www/laravel-app

ADD install-laravel.sh /install-laravel.sh
RUN chmod a+x /install-laravel.sh