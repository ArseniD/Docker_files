#!/bin/bash - 
#===============================================================================
#
#          FILE: docker_install_ubuntu.sh
# 
#         USAGE: ./docker_install_ubuntu.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Arseni Dudko (), 
#  ORGANIZATION: 
#       CREATED: 01/31/2018 16:38
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

# Login as root
sudo su

# Install all essential packages
apt-get install apt-transport-https ca-certificates curl software-properties-common

# Install docker gpg
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Add docker repo
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# Get new sources
apt-get update

# Install docker
apt-get install docker-ce

# Check docker status
systemctl status docker

# Check out permission
cd /var/run
ls -la docker.sock

# Add user to docker group
usermod -aG docker user
exit

# Relogin into system in order to get access

