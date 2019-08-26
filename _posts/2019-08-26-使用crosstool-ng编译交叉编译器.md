---
layout: post
categories: tech
title: 使用crosstool-ng编译交叉编译器
typora-root-url: ../
---
## 使用crosstool-ng编译交叉编译器
```bash
cp samples/arm-unknown-linux-gnueabi/crosstool.config .config
ct-ng menuconfig
```

提示找不到：libelf-0.8.13，可以从[libelf-0.8.13.tar.gz](https://github.com/pd2-linux/tina/blob/master/dl/libelf-0.8.13.tar.gz?raw=true)下载

#### Ref:

- [https://www.cnblogs.com/Charles-Zhang-Blog/p/3319377.html](https://www.cnblogs.com/Charles-Zhang-Blog/p/3319377.html)