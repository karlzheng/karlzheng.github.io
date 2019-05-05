---
layout: post
categories: tech
title: 在python中使用sqlalchemy和python mysql连接Mysql数据
typora-root-url: ../
---
## 在python中使用sqlalchemy和python mysql连接Mysql数据

1. #### 安装mysql-python:
```shell
pip install mysql-python --user
otool -L  /Users/karlzheng/Library/Python/2.7/lib/python/site-packages/_mysql.so
```
2. #### 下载 mysql-8.0.16-macos10.14-x86_64.tar 
```shell
tar xf mysql-8.0.16-macos10.14-x86_64.tar 
cd lib
cp libmysqlclient.21.dylib libssl.1.0.0.dylib libcrypto.1.0.0.dylib /Users/karlzheng/Library/Python/2.7/lib/python/site-packages/
```
3. #### 更改rpath链接地址:
```shell
cd /Users/karlzheng/Library/Python/2.7/lib/python/site-packages/
fl=(libmysqlclient.21.dylib libssl.1.0.0.dylib libcrypto.1.0.0.dylib); for f in ${fl[@]};do e $f; install_name_tool -change $f `pwd`/$f _mysql.so;done
```