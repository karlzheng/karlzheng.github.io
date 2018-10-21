---
layout: post
categories: tech
title: setting ssh log
---
## setting ssh log



```shell
vi /etc/ssh/sshd_config
LogLevel VERBOSE
/etc/init.d/ssh restart
tail -f /var/log/secure
```





#### [Ref]

[https://www.cnblogs.com/MYSQLZOUQI/p/4883519.html](https://www.cnblogs.com/MYSQLZOUQI/p/4883519.html)

