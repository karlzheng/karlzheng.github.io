---
layout: post
categories: tech
title: 重新打包ubuntu上的bcompare
---
## 重新打包ubuntu上的bcompare

#### 1. 话说原来的bcompare-4.2.2.22384_amd64.debg有key可以安装使用的：

```shell
wget https://www.scootersoftware.com/bcompare-4.2.2.22384_amd64.deb
```

现在返回404了；

#### 2. 重新打包：

```shell
dpkg -L bcompare  2>&1 3>&1 |tee ~/tmp/tee.log 
for f in $(cat ~/tmp/tee.log);do [ -f $f ] && echo $f;done  2>&1 3>&1 |tee ~/tmp/tee.log2 
for f in $(cat ~/tmp/tee.log2);do tar rf /tmp/bcompare.tar $f;done
mkdir bcompare
cd bcompare
wget http://www.scootersoftware.com/bcompare-4.2.8.23479_amd64.deb -O /tmp/bcompare-4.2.8.23479_amd64.deb
dpkg -e /tmp/bcompare-4.2.8.23479_amd64.deb DEBIAN
tar xf /tmp/bcompare.tar
cd ..
dpkg -b bcompare bcompare-4.2.2.22384_amd64.deb
```

