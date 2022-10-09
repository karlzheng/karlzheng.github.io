---
layout: post
categories: tech
title: run arm cross compiler docker on Macbook M1
typora-root-url: ../
---
## run arm cross compiler docker on Macbook M1

```bash
docker run --tty -d --name raspi-build multiarch/ubuntu-core:armhf-focal bash
docker exec -it multiarch/ubuntu-core:armhf-focal /bin/bash
docker commit cf0e6f86880b arm-compiler
```

OR:

```bash
git clone git@github.com:geerlingguy/raspberry-pi-pcie-devices.git
cd raspberry-pi-pcie-devices/extras/cross-compile
docker-compose up -d
docker attach cross-compile
```

