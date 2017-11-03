FROM php:7.1.11-fpm

MAINTAINER Maarten Scholz

RUN apt-get update && apt-get install -y libicu-dev git zlib1g-dev
RUN docker-php-ext-install intl bcmath zip
RUN php -r "readfile('http://getcomposer.org/installer');" | php -- --install-dir=/usr/bin/ --filename=composer
