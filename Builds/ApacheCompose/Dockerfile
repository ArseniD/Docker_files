# Simple webserver
FROM centos:latest
LABEL maintainer="arsenidudko2018@gmail.com"

RUN yum install -y httpd
RUN echo "Our Container Website" >> /var/www/html/index.html

EXPOSE 80

ENTRYPOINT apachectl -DFOREGROUND
