FROM php:8.2-apache

# Install mysqli extension
RUN docker-php-ext-install mysqli

# Enable Apache rewrite module if needed (.htaccess)
RUN a2enmod rewrite

# Update the default apache site with the config we want
# (optional depending on if there are custom Apache needs)

# Expose port 80
EXPOSE 80
