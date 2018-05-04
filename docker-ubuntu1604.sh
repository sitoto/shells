#https://www.cnblogs.com/zyrblog/p/8523928.html
sudo apt-get remove docker docker-engine docker.io
sudo apt-get update
sudo    apt-get install \
          apt-transport-https \
                  ca-certificates \
                          curl \
                                  software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
       "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
            $(lsb_release -cs) \
                 stable"
sudo apt-get update
sudo apt-cache madison docker-ce
sudo apt-get install docker-ce=[版本号]
udo apt-get install docker-ce=18.03.1~ce-0~ubuntu
sudo apt-get install docker-ce
docker version
docker info
docker --version
sudo docker run hello-world

echo "DOCKER_OPTS=\"--registry-mirror=https://自己的域名.mirror.aliyuncs.com\"" | sudo tee -a /etc/default/docker



sudo usermod -aG docker hw

