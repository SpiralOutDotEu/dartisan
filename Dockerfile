FROM php:latest


MAINTAINER "SpiralOut" <spiralout.eu@gmail.com>

WORKDIR /tmp

RUN mkdir -p /var/www
VOLUME ["/var/www"]
WORKDIR /var/www

EXPOSE 3306

ENTRYPOINT ["php", "artisan"]
CMD ["--help"]

