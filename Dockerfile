FROM dunglas/frankenphp:latest

# Install mysqli extension
RUN install-php-extensions mysqli pdo_mysql

# Copy WordPress files
COPY ./wordpress /app/public

# Set proper permissions
RUN chown -R www-data:www-data /app/public