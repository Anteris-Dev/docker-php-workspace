FROM php:7.4-cli-alpine

    LABEL maintainer="Aidan Casey <aidan.casey@anteris.com>"
    LABEL description="A lightweight workspace container designed for PHP applications."

    # Install Composer
    COPY --from=composer /usr/bin/composer /usr/bin/composer

    # Install Node
    RUN apk add --no-cache nodejs npm

    # Override Defaults
    CMD []
    ENTRYPOINT []

    # Set the Working Directory
    RUN rm -rf /var/www \
        && mkdir -p /var/www/app \
        && chown -R www-data:www-data /var/www/app
    WORKDIR /var/www/app
