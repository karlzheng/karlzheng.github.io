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
- [https://github.com/Pro/raspi-toolchain](https://github.com/Pro/raspi-toolchain)

```
By default, newer GCC versions do not create correct binaries for ARMv6. Even though you pass the correct -mcpu= flag to gcc, it will create startup code for the newer ARMv7 architecture. Running them on your RasPI Zero will cause an "Illegal Instruction" exception.
```

##### Ref:
- [https://github.com/tttapa/RPi-Cross-Cpp-Development](https://github.com/tttapa/RPi-Cross-Cpp-Development)
- [https://github.com/Pro/raspi-toolchain](https://github.com/Pro/raspi-toolchain)

