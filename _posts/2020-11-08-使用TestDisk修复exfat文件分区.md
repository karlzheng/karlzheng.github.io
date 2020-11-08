---
layout: post
categories: tech
title: 使用TestDisk修复exfat文件分区
typora-root-url: ../
---
## 使用TestDisk修复exfat文件分区

- 之前为了在Mac OSX和Windows中交换数据，把移动硬盘格式化为exfat文件格式。
- 没想到这货文件分配表没有双备份的，在Mac上弄了一下就丢失了，并且Windows和OSX都找不到文件系统了，泪奔。
- Google到TestDisk可以修复。
- 试了一下，果然可以，就个文件分配表，很快就修复。
- 为[TestDisk](https://www.cgsecurity.org/wiki/TestDisk) 点赞！！👍👍



