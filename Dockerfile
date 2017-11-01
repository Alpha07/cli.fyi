FROM php:7.2-rc-fpm-alpine3.6

RUN curl https://getcomposer.org/installer > composer-setup.php && php composer-setup.php && mv composer.phar /usr/local/bin/composer && rm composer-setup.php
RUN apk update && apk upgrade && \
    apk add --no-cache bash git openssh

WORKDIR /web

RUN echo 'up'
