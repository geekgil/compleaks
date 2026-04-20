FROM php:5.6-apache

# Fix Debian stretch archive repositories
RUN echo "deb http://archive.debian.org/debian stretch main" > /etc/apt/sources.list \
    && echo "deb http://archive.debian.org/debian-security stretch/updates main" >> /etc/apt/sources.list \
    && apt-get update || true \
    && apt-get install -y --force-yes zlib1g-dev \
    && docker-php-ext-install mysql mysqli zip

# enable mod_rewrite
RUN a2enmod rewrite

# set document root to current directory
ENV APACHE_DOCUMENT_ROOT /var/www/html
RUN sed -ri -e 's!/var/www/html!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/sites-available/*.conf
RUN sed -ri -e 's!/var/www/!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf

# Fix permissions for uploads
RUN chown -R www-data:www-data /var/www/html
