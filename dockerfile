FROM php:7.3-fpm-alpine

MAINTAINER Mykyta Popov <mp091689@gmail.com>

RUN apk update
# Install pdo mysql
RUN apk add --update php7-mysqli \
    && docker-php-ext-install mysqli pdo pdo_mysql
# Install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer
# Install psalm
RUN composer global require --dev vimeo/psalm

# Make psalm callable from command line by "psalm" command
ENV PATH /root/.composer/vendor/bin:${PATH}

# Create work dir
RUN mkdir /app

WORKDIR /app
