FROM nginx
COPY /files/static_site.cfg.j2 /etc/nginx/nginx.conf
COPY /files/index.html /usr/share/nginx/html/index.html
COPY /files/review.php /usr/share/nginx/html/review.php
#COPY /files/badproxy /etc/apt/apt.conf.d/99fixbadproxy
RUN apt-get update
RUN echo "daemon off;" >> /etc/nginx/nginx.conf && apt-get update && apt-get install php7.0-mysql php7.0-fpm -y
COPY /files/start.sh /start.sh
COPY /files/www.cfg.j2 /etc/php/7.0/fpm/pool.d/www.conf
CMD ["/bin/bash","/start.sh"]
