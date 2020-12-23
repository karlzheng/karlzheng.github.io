---
layout: post
categories: tech
title: [转]clang format 强制clang格式尊重doxygen块注释
typora-root-url: ../
---
## [转]clang format 强制clang格式尊重doxygen块注释

在C / C ++代码中使用长块C风格的Doxygen注释

```
/**************************************************************************//**
* \file
* \date   2017-01-02
* \author Alex Hogen
******************************************************************************/
```

如果对此运行clang-format，它将在两个正斜杠之间插入一个空格:

```
/**************************************************************************/ /**
* \file
* \date   2017-01-02
* \author Alex Hogen
******************************************************************************/
```



尝试`CommentPragmas`正则表达式[`\/\*+\/\/\*+`](https://regexr.com/3ijaf)。
尝试过`CommentPragmas`正则表达式[`/\*(.+\n.+)+\*/`](https://stackoverflow.com/a/36361434/3638827)
我尝试将`ReflowComments`设置为`false`,
将`SpacesBeforeTrailingComments`设置为2，
这些都不起作用。

最后在.clang-format`文件中：

```
CommentPragmas:  '^\\.+'
```



#### Ref:

- [https://www.coder.work/article/6941786](https://www.coder.work/article/6941786)