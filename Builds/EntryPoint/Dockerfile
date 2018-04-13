# Dockerfile based on the latest centos 7 image - non-privileged user entry
FROM centos:latest
MAINTAINER <arsenidudko2018@gmail.com>

RUN useradd -ms /bin/bash user

ENTRYPOINT echo "This command will display this message on EVERY container that is run from it"

USER user


