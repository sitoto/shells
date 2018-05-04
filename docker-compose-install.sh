Install docker-compose===============
sudo curl -L https://github.com/docker/compose/releases/download/1.21.0/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose

Apply executable permissions to the binary:

sudo chmod +x /usr/local/bin/docker-compose
Optionally, install command completion for the bash and zsh shell.

Test the installation.

$ docker-compose --version
docker-compose version 1.21.0, build 1719ceb


