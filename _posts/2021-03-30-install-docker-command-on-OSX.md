---
layout: post
categories: tech
title: install docker command on OSX
typora-root-url: ../
---
## install docker command on OSX

```shell
brew install docker docker-machine
#brew install --cask virtualbox
docker-machine create default
docker-machine env default
eval "$(docker-machine env default)"
docker ps
docker run hello-world
```

```shell
# 不要用下面的这个命令装(这个命令装的是桌面版本)
brew install  --cask docker
```



- ##### Ref
	- [https://stackoverflow.com/questions/44084846/cannot-connect-to-the-docker-daemon-on-macos](https://stackoverflow.com/questions/44084846/cannot-connect-to-the-docker-daemon-on-macos)

