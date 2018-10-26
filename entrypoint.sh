#!/bin/bash
sleep 1

cd /home/container

echo "Starting PHP-FPM..."
/usr/sbin/php-fpm7 --fpm-config /home/container/php-fpm.conf --daemonize

echo "Starting Nginx..."
/usr/sbin/nginx -c /home/container/nginx.conf