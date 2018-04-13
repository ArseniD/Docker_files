#!/bin/bash - 
#===============================================================================
#
#          FILE: docker_install_centos.sh
# 
#         USAGE: ./docker_install_centos.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Arseni Dudko (), 
#  ORGANIZATION: 
#       CREATED: 01/31/2018 16:24
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

# Switch to root
sudo su

# Install essential packages for containers system
yum install -y yum-utils device-mapper-persistent-data lvm2

# Install the latest stable version of ce docker version
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

# Update sources
yum update

# Install docker ce
yum install -y docker-ce

# Enable and start docker
systemctl enable docker && systemctl start docker && systemctl status docker

# Check out images
docker images

# Check out permission on docker run
cd /var/run
ls -la docker.sock

# Add user to docker group
usermod -aG docker user

# Logout root user
exit

