---
layout: post
categories: tech
title: 在Mac中ssh登陆Linux并且显示linux图形
---
## 在Mac中ssh登陆Linux并且显示linux图形


#### 1.首先安装运行xquatz:

[https://www.xquartz.org/](https://www.xquartz.org/)

#### 2. 在Linux /etc/ssh/sshd_config中设置：

```sh
X11Forwarding yes
X11DisplayOffset 10
```

#### 3. ssh X forward

```shell
ssh -X john@123.123.123.123
export DISPLAY=mac电脑IP地址:0.0
```

##### 4.在远端运行一下xeyes、xclock、xlogo这样的基本应用来测试一下

```shell
gvim
```


#### [Ref:]
[在Mac上使用远程X11应用](https://www.cnblogs.com/andrewwang/p/8535081.html)
