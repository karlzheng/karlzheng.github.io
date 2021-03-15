---
layout: post
categories: tech
title: 使用grabserial在Mac苹果电脑上抓取Log
typora-root-url: ../
---
## 使用grabserial在Mac苹果电脑上抓取Log

```shell
grabserial -T -S -d /dev/tty.usbserial-A50285BI -b $((115200*10)) -o /tmp/s1.log
```

- #### Ref:

	- [https://elinux.org/Grabserial](https://elinux.org/Grabserial)
	- [https://github.com/tbird20d/grabserial](https://github.com/tbird20d/grabserial)

