---
layout: post
categories: git
title: install gitolite in ubuntu
---
## install gitolite in ubuntu

```shell
addgroup --system git
adduser --system --shell /bin/bash --ingroup git --disabled-password --disabled-login --gecos "git repository hosting" git
su - git
git clone git://github.com/sitaramc/gitolite 

mkdir -p /home/git/bin
gitolite/install -to /home/git/bin
export PATH=/home/git/bin:$PATH
./bin/gitolite setup -pk /tmp/karl.pub 
```

