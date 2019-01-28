#太费资源了，，，启起来都要3G 了，运行后只会增加了
# 内存4G 还有别的应用，不敢用了，改成gogs
#https://www.cnblogs.com/int32bit/p/5310382.html
docker pull gitlab/gitlab-ce

GITLAB_HOME=`pwd`/data/gitlab
docker run -d \
  --hostname gitlab \
  --publish 8443:443 --publish 80:80 --publish 2222:22 \
  --name gitlab \
  --restart always \
  --volume $GITLAB_HOME/config:/etc/gitlab \
  --volume $GITLAB_HOME/logs:/var/log/gitlab \
  --volume $GITLAB_HOME/data:/var/opt/gitlab \
  gitlab/gitlab-ce
docker exec -t -i gitlab vim /etc/gitlab/gitlab.rb

gitlab_rails['smtp_enable'] = true
gitlab_rails['smtp_address'] = "smtp.163.com"
gitlab_rails['smtp_port'] = 25
gitlab_rails['smtp_user_name'] = "xxxx@163.com"
gitlab_rails['smtp_password'] = "xxxxpassword"
gitlab_rails['smtp_domain'] = "163.com"
gitlab_rails['smtp_authentication'] = "login"
gitlab_rails['smtp_enable_starttls_auto'] = false
gitlab_rails['smtp_openssl_verify_mode'] = "peer"

gitlab_rails['gitlab_email_from'] = "xxxx@163.com"
user["git_user_email"] = "xxxx@163.com"

3.2 配置外部访问URL
这个必须配置，否则默认以容器的主机名作为URL，刚开始由于做了端口映射80->8080, 因此设置为

external_url "http://10.103.240.36:8080"
后来发现external_url只能配置ip或者域名，不能有端口，否则不能启动。
于是只能把端口设置为80->80，然后external_url设置为:

external_url "http://10.103.240.36"
4. 重启gitlab
docker restart gitlab

