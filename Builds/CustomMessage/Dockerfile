# Dockerfile based on the latest centos 7 image - non-privileged user entry
FROM centos:latest
MAINTAINER <arsenidudko2018@gmail.com>

RUN useradd -ms /bin/bash user
RUN echo "EXPORT 192.168.0.0/24" >> /etc/exports.list

USER user



