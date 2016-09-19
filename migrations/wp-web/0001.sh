#!/bin/bash

# Install WP-CLI
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp

# Create new user?

# Install WordPress
mkdir /var/www
cd /var/www
wp core download --allow-root

# Restart nginx
service nginx restart
