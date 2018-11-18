FROM php:7.2-cli-alpine


MAINTAINER "SpiralOut" <spiralout.eu@gmail.com>

WORKDIR /tmp

RUN apk --update add php7-xml php7-mysqli php7-json php7-openssl php7-curl \
    php7-zlib php7-xml php7-phar php7-intl php7-dom php7-xmlreader php7-ctype \
    php7-mbstring php7-gd php7-session php7-tokenizer php7-bcmath php7-pdo php7-pdo_mysql php7-json curl

RUN mkdir -p /var/www
VOLUME ["/var/www"]
WORKDIR /var/www

EXPOSE 3306

ENTRYPOINT ["php", "artisan"]
CMD ["--help"]

