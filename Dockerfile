FROM php:7.1.11-fpm-alpine3.4

MAINTAINER Maarten Scholz

RUN apk update && apk add libicu-dev git zlib1g-dev libpng-dev libjpeg62-turbo-dev
RUN docker-php-ext-configure gd --with-jpeg-dir=/usr/lib/x86_64-linux-gnu/
RUN docker-php-ext-install intl bcmath zip gd exif
RUN php -r "readfile('http://getcomposer.org/installer');" | php -- --install-dir=/usr/bin/ --filename=composer
