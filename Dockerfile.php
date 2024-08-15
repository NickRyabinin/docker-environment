# Dockerfile.php
FROM php:8.3.10

# Установка необходимых расширений и инструментов
RUN apt-get update && apt-get install -y \
    git \
    unzip \
    libpq-dev \
    libonig-dev \
    && docker-php-ext-install pdo pdo_pgsql mbstring \
    && curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer \
    && curl -sS https://phar.phpunit.de/phpunit.phar -o /usr/local/bin/phpunit \
    && chmod +x /usr/local/bin/phpunit \
    && curl -OL https://squizlabs.github.io/PHP_CodeSniffer/phpcs.phar \
    && mv phpcs.phar /usr/local/bin/phpcs \
    && chmod +x /usr/local/bin/phpcs \
    && pecl install xdebug \
    && docker-php-ext-enable xdebug

# Настройка Xdebug
COPY ./xdebug.ini /usr/local/etc/php/conf.d/xdebug.ini

WORKDIR /app