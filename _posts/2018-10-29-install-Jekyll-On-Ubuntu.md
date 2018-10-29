---
layout: post
categories: tech Jekyll
title: install Jekyll On Ubuntu
---
## install Jekyll On Ubuntu



```shell
sudo apt-get purge ruby2.3
sudo apt-get update 
sudo apt-get install jekyll ruby-dev
bundle install
export LC_ALL="zh_CN.UTF-8"
bundle exec jekyll serve --port=4000
```

