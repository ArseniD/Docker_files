# Centos 6 base image for open-ssh server
FROM centos:centos6
MAINTAINER <arsenidudko2018@gmail.com>

RUN yum update -y
RUN yum install -y openssh-server
RUN yum install -y httpd

EXPOSE 22 80

