---
layout: post
categories: tech
title: windows env variables
typora-root-url: ../
---
## windows env variables

- Ref for from: [https://foair.me/posts/windows-env-variables/](https://foair.me/posts/windows-env-variables/)

```
%~dp0 只能用在批处理中。且 %cd% 是当前目录，而 %~dp0 是批处理所在目录。% 使用 %% 进行转义。
%~dp0 是对第 0 个参数，一般是可执行文件进行扩展，~ 表示扩展，d 表示驱动器，p 代表路径。
一些详细的说明可以在命令提示符下面键入 CALL /? or FOR /? 来查看
```

