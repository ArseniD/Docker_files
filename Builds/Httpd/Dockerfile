# This is our first real Dockerfile
ARG TAGVERSION=6
FROM centos:${TAGVERSION}

LABEL maintainer="arsenidudko2018@gmail.com"

RUN yum update -y && \ 
    yum install -y httpd net-tools && \
    mkdir -p /run/httpd && \
    rm -rf /run/httpd/* /tmp/httpd*

# ADD instead of COPY support URL, COPY works only with files
COPY index.html /var/www/html/

ENV ENVIRONMENT="production"

# Mount a volume to the container
VOLUME /mymount 

EXPOSE 80

ENTRYPOINT ls -al | wc -l 
