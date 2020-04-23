FROM php:7.3-apache
RUN docker-php-ext-install pdo pdo_mysql
RUN a2enmod rewrite

# install basic package
RUN apt-get update && \
    apt-get install -y --no-install-recommends zip unzip

# install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN composer --version

# Copy configuration files
ADD config/vhosts.conf /etc/apache2/sites-enabled/000-default.conf
ADD config/php.ini /usr/local/etc/php/php.ini

VOLUME /var/www/html
