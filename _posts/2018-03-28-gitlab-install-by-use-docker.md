---
layout: default
title: install-gitlab-by-use-docker
---
## install gitlab by use docker

#### 1. Install docker CE in Ubuntu

```Shell
sudo apt-get remove docker docker-engine docker.io
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update

sudo apt-get install docker-ce
#sudo docker run hello-world
docker pull gitlab/gitlab-ce 
```

#### 2. Add user to docker group

```shell
sudo groupadd docker
sudo gpasswd -a ${USER} docker
newgrp - docker
sudo service docker restart
```

#### 3. vi start.sh to run gitlab docker

```shell
#!/bin/bash -

HOST_NAME=gl.hoct.com
GITLAB_DIR=`pwd`
docker stop gitlab
docker rm gitlab
docker run -d \
    --hostname ${HOST_NAME} \
    -p 8443:443 -p 8880:80 -p 8822:22 \
    --name gitlab \
    -v ${GITLAB_DIR}/config:/etc/gitlab \
    -v ${GITLAB_DIR}/logs:/var/log/gitlab \
    -v ${GITLAB_DIR}/data:/var/opt/gitlab \
    gitlab/gitlab-ce
```

#### 4. add Email config to gitlab.rb

```Ruby
#external_url 'http://gl.newatch.net:8880'
gitlab_rails['gravatar_ssl_url'] = 'https://secure.gravatar.com/avatar/%{hash}?s=%{size}&d=identicon'
gitlab_rails['gitlab_shell_ssh_port'] = 8822

gitlab_rails['gitlab_email_enabled'] = true 
gitlab_rails['gitlab_email_from'] = 'meiklife@163.com'
gitlab_rails['gitlab_email_display_name'] = 'Newatch Gitlab Admin'
gitlab_rails['gitlab_email_reply_to'] = 'noreply@meiklife.cn'

gitlab_rails['smtp_enable'] = true
gitlab_rails['smtp_address'] = "smtp.163.com"
gitlab_rails['smtp_port'] = 465
gitlab_rails['smtp_user_name'] = "meiklife@163.com"
gitlab_rails['smtp_password'] = "xxxxxxxxxpassword"
gitlab_rails['smtp_domain'] = "163.com"
gitlab_rails['smtp_authentication'] = "login"
gitlab_rails['smtp_enable_starttls_auto'] = true
gitlab_rails['smtp_tls'] = true

user['git_user_email'] = "meiklife@163.com"
```

##### 5. 不在登录界面出现用户自注册的输入界面:

```Shell
在Admin Area->Settings->Sign-in Restrictions里将Sign-up enabled选项去掉
```

