---
layout: post
categories: tech
title: install locale on Ubuntu
typora-root-url: ../
---
## install locale on Ubuntu

```shell
sudo apt-get install locales
sudo apt-get language-pack-zh-hans
sudo dpkg-reconfigure locales
sudo vim /etc/locale.gen
sudo locale-gen
```

