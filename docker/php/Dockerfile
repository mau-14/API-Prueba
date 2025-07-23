FROM php:8.2-cli

# extensiones necesarias
RUN apt-get update && apt-get install -y \
    git unzip libicu-dev libzip-dev zip libonig-dev curl libpng-dev libxml2-dev \
    && docker-php-ext-install intl pdo pdo_mysql zip

# Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

RUN useradd -m appuser

RUN mkdir /app && chown appuser:appuser /app

WORKDIR /app

USER appuser

COPY --chown=appuser:appuser . .

RUN composer install

EXPOSE 8000

CMD ["php", "-S", "0.0.0.0:8000", "-t", "public"]
