#!/bin/bash

# Assign backend service name to hostname in php file using environment variable
sed -i -e "s/db_server/$BACKEND_SERVICE_NAME/g" /usr/share/nginx/html/review.php

# Start NGINX and PHP services
service php7.0-fpm start
service nginx start

