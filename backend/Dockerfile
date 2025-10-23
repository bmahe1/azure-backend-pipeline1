FROM php:8.1-apache

# Install dependencies
RUN apt-get update && apt-get install -y             git             unzip             libzip-dev             && docker-php-ext-install pdo pdo_mysql zip

# Enable apache mod_rewrite
RUN a2enmod rewrite

# Copy application
COPY backend/ /var/www/html/

# Set working directory
WORKDIR /var/www/html

# Copy entrypoint and make executable
COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

EXPOSE 80
CMD ["/usr/local/bin/entrypoint.sh"]
