---
layout: post
categories: tech
title: package c code to libs
typora-root-url: ../
---
## package c code to libs

```bash
gcc -c func.c
ar rcs libfunc.a func.o
gcc -I. -L. main.c -lfunc
```

