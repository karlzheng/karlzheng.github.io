---
layout: post
categories: tech
title: install gitolite centos
---
## install gitolite centos

```shell
useradd git
passwd git
su - git
mkdir -p ~/bin
~/gitolite/install -to ~/bin
~/bin/gitolite setup -pk /tmp/karl.pub
```

#### Ref:
[https://www.cnblogs.com/xchendevelop/articles/6568339.html](https://www.cnblogs.com/xchendevelop/articles/6568339.html)