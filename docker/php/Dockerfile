FROM php:8.2-cli

WORKDIR /app

# extensiones necesarias
RUN apt-get update && apt-get install -y \
    git unzip libicu-dev libzip-dev zip libonig-dev curl libpng-dev libxml2-dev \
    && docker-php-ext-install intl pdo pdo_mysql zip

# Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# usuario sin privilegios
RUN useradd -m appuser
USER appuser

# copiar archivos del proyecto al directorio /app
COPY --chown=appuser:appuser . .

# instalar dependencias como usuario appuser
RUN composer install

# volver a root
USER root

EXPOSE 8000

CMD ["php", "-S", "0.0.0.0:8000", "-t", "public"]
