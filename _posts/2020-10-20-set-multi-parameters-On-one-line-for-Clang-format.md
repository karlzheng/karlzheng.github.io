---
layout: post
categories: tech
title: set multi parameters On one line for Clang format
typora-root-url: ../
---
## set multi parameters On one line for Clang format

```shell
diff .clang-format ~/.clang-format 
34,37c34,37
< #BinPackArguments: true
< #BinPackParameters: true
< BinPackArguments: false
< BinPackParameters: false
```



##### Ref:

- [https://www.jianshu.com/p/5dea6bdbbabb](https://www.jianshu.com/p/5dea6bdbbabb)

