---
layout: post
categories: tech
title: designated docker args and build arg
typora-root-url: ../
---
## designated docker args and build arg


- utils/docker/Dockerfile

```
ARG UBUNTU_BASE=20.04
```

- docker image building command
```shell
docker build –-build-arg UBUNTU_BASE=22.04 -t x86_64_ubuntu2204 --platform=linux/amd64 -f ./utils/docker/Dockerfile .
```