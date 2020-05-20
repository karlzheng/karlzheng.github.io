---
layout: post
categories: tech
title: CodingStyle beautify by Using Astyle
typora-root-url: ../
---
## CodingStyle beautify by Using Astyle

#### C/C++工具：Astyle最简使用说明

- C/C++代码格式化工具，也可以格式化Java与C#:

```shell
astyle --style=kr --max-code-length=80 *.cpp
```
- 格式化时，排除第三方源文件:
```
astyle --style=风格 -r "*.cpp" "*.h" --exclude=3rdparty
```

- #### Ref:

	- [https://www.jianshu.com/p/307f846b2de4](https://www.jianshu.com/p/307f846b2de4)

