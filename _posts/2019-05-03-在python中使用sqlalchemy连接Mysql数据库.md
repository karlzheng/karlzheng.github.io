---
layout: post
categories: tech
title: 在python中使用sqlalchemy连接Mysql数据库
typora-root-url: ../
---
## 在python中使用sqlalchemy连接Mysql数据库

##### 1.要选好库

不要用python-mysql, 用PyMySQL: **[PyMySQL/PyMySQL · GitHub](https://link.zhihu.com/?target=https%3A//github.com/PyMySQL/PyMySQL)**

##### 2.要改连接字符 

```text
mysql+pymysql://<username>:<password>@<host>/<dbname>[?<options>]
```

#### Ref:

链接：https://www.zhihu.com/question/30963225/answer/54737592

