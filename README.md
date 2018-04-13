## Docker files 

This repo contains docker install scripts and various useful dockerfiles for self-learning

### Prerequisites

Go to the Install directory and run bash script as root user on you system (CentOS/Ubuntu)

```
sudo ./docker_install_centos.sh
```

### Installing

In order to build an image from a Dockerfile specify a path to desirable file

```
$ docker build -f /path/to/a/Dockerfile .
```

And check it out

```
docker ps
```

