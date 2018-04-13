FROM ubuntu:16.04

MAINTAINER Arseni Dudko "arsenidudko2018@gmail.com"

RUN apt-get update
RUN apt-get install -y apache2 curl net-tools vim
RUN echo "Hello World!" > /var/www/html/index.html

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2
#ENV APACHE_PID_FILE=/var/run/apache2/apache2$SUFFIX.pid
#ENV APACHE_LOCK_DIR=/var/lock/apache2

#RUN mkdir -p $APACHE_RUN_DIR $APACHE_LOCK_DIR $APACHE_LOG_DIR

EXPOSE 80

#CMD ["/usr/bin/apache2ctl", "-DFOREGROUND"]
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

