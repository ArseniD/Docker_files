## Prerequisites

Download the Docker Compose binary from the Compose repository release page on GitHub.
Follow the instructions from the link, which involve running the `curl` command in your terminal to download the binaries.
These step by step instructions are also included below.

### Installing

1. Run this command to download the latest version of Docker Compose:

```
sudo curl -L https://github.com/docker/compose/releases/download/1.21.0/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
```

2. Apply executable permissions to the binary

```
sudo chmod +x /usr/local/bin/docker-compose
```

3. Optionally, install [command completion](https://docs.docker.com/compose/completion/) for the bash and zsh shell

4. Test the installation

```
$ docker-compose --version
```
5. From your directory, start up your application by running docker-compose up

```
$ docker-compose up
```
