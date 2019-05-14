FROM php:7.2.2-apache

LABEL maintainer="WTF <wtf@wtf.com>"

ENV LANG C.UTF-8
ENV APP_HOME /var/www/html

RUN mkdir -p $APP_HOME
WORKDIR $APP_HOME

RUN apt-get update
RUN apt-get install mysql-client -y
RUN pecl channel-update pecl.php.net 
RUN printf "\n" | pecl install redis && docker-php-ext-enable redis