FROM php:8.1-fpm-alpine

RUN apk update 
RUN apk upgrade 
RUN apk add ca-certificates wget 
RUN update-ca-certificates
RUN apk add libpng-dev

RUN apk add --no-cache mysql-client msmtp perl wget procps shadow libzip libpng libjpeg-turbo libwebp freetype icu

RUN if [ ! -f /usr/src/php.tar.xz ]; then \
    wget -O /usr/src/php.tar.xz "https://www.php.net/distributions/php-${PHP_VERSION}.tar.xz"; \
    fi

RUN apk add --no-cache --virtual build-essentials \
    icu-dev icu-libs zlib-dev g++ make automake autoconf libzip-dev \
    libpng-dev libwebp-dev libjpeg-turbo-dev freetype-dev && \
    docker-php-ext-configure gd --enable-gd --with-freetype --with-jpeg --with-webp && \
    docker-php-ext-install gd && \
    docker-php-ext-install mysqli && \
    docker-php-ext-install pdo_mysql && \
    docker-php-ext-install intl && \
    docker-php-ext-install opcache && \
    docker-php-ext-install exif && \
    docker-php-ext-install zip && \
    apk del build-essentials && rm -rf /usr/src/php*

WORKDIR /var/www/html/mlite

RUN mkdir -p uploads
RUN mkdir -p tmp
RUN mkdir -p admin
RUN mkdir -p admin/tmp

RUN chmod -R 777 uploads
RUN chmod -R 777 tmp
RUN chmod -R 777 admin/tmp
