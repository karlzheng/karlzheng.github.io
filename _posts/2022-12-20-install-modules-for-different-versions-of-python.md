---
layout: post
categories: tech
title: install modules for different versions of python
typora-root-url: ../
---
## install modules for different versions of python

There are different versions python with pip on my macbook, when run a python scripts, it prompted as,

```
ModuleNotFoundError: No module named 'regex'
```

actually I had install the 'regex' module by pip,

it is not in the place that python can found it.

after search, it is resolved by execute the command as following

```bash
$ where pip
/usr/local/bin/pip
$ where python3
/Library/Frameworks/Python.framework/Versions/3.8/bin/python3
$python3 -m pip install regex
```



#### Ref:

- [https://stackoverflow.com/questions/64070214/regex-installed-with-pip-but-not-recognized](https://stackoverflow.com/questions/64070214/regex-installed-with-pip-but-not-recognized)
