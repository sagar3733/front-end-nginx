FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install -y nginx
ADD /files/nginx.conf /etc/nginx/nginx.conf
ADD /files/index.html /usr/share/nginx/html/index.html


