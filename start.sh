#!/bin/sh

php-fpm81
caddy run --config /app/Caddyfile
