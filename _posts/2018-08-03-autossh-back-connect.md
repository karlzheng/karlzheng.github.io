---
layout: post
categories: tech
title: autossh back connect
---
## autossh back connect

```shell
autossh -M 5122 -N -R 3322:localhost:22 karl@x1
ssh -p 3322 karlzheng@x1 -D 1080
```

