FROM php:latest


MAINTAINER "SpiralOut" <spiralout.eu@gmail.com>

WORKDIR /tmp

RUN apt-get update -y && \
    apt-get install -y \
    php7-mcrypt \
    php7-mssql \
    php7-mysqlnd \
    php7-pgsql \
    php7-redis \
    php7-mongo \
    php7-sqlite \
    php7-dev make php-pear \
    php7-gd && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* 
    #pecl install mongodb && \
    #echo "extension=mongodb.so" >> `php --ini | grep "Loaded Configuration" | sed -e "s|.*:\s*||"`

RUN mkdir -p /var/www
VOLUME ["/var/www"]
WORKDIR /var/www

EXPOSE 3306

ENTRYPOINT ["php", "artisan"]
CMD ["--help"]

