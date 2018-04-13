# Dockerfile based on the latest centos 7 image - non-privileged user entry
FROM centos:latest
MAINTAINER <arsenidudko2018@gmail.com>

RUN useradd -ms /bin/bash user

CMD "echo" "This is a custom container  message"


USER user


