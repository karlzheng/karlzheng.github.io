---
layout: post
categories: tech python pycharm
title: 为pycharm增加python模块搜索路径
---
## 为pycharm增加python模块搜索路径

```python
>>> import pydub 
>>> print(pydub.__file__)
/Library/Python/2.7/site-packages/pydub/__init__.pyc

>>> import sys
>>> print(sys.path)
['', '/Library/Python/2.7/site-packages/baidu_aip-2.0.0.1-py2.7.egg', '/Library/Python/2.7/site-packages/requests-2.18.4-py2.7.egg', '/Library/Python/2.7/site-packages/certifi-2018.1.18-py2.7.egg', '/Library/Python/2.7/site-packages/urllib3-1.22-py2.7.egg', '/Library/Python/2.7/site-packages/idna-2.6-py2.7.egg', '/Library/Python/2.7/site-packages/chardet-3.0.4-py2.7.egg', '/Users/karlzheng/PycharmProjects/pywaveform', '/Users/karlzheng/bashrc/pythonlib', '/System/Library/Frameworks/Python.framework/Versions/2.7/lib/python27.zip', '/System/Library/Frameworks/Python.framework/Versions/2.7/lib/python2.7', '/System/Library/Frameworks/Python.framework/Versions/2.7/lib/python2.7/plat-darwin', '/System/Library/Frameworks/Python.framework/Versions/2.7/lib/python2.7/plat-mac', '/System/Library/Frameworks/Python.framework/Versions/2.7/lib/python2.7/plat-mac/lib-scriptpackages', '/System/Library/Frameworks/Python.framework/Versions/2.7/lib/python2.7/lib-tk', '/System/Library/Frameworks/Python.framework/Versions/2.7/lib/python2.7/lib-old', '/System/Library/Frameworks/Python.framework/Versions/2.7/lib/python2.7/lib-dynload', '/Library/Python/2.7/site-packages', '/System/Library/Frameworks/Python.framework/Versions/2.7/Extras/lib/python', '/System/Library/Frameworks/Python.framework/Versions/2.7/Extras/lib/python/PyObjC']
>>> 

```



```python
import sys

mypath = ['/Library/Python/2.7/site-packages/baidu_aip-2.0.0.1-py2.7.egg',
'/Library/Python/2.7/site-packages/requests-2.18.4-py2.7.egg',
'/Library/Python/2.7/site-packages/certifi-2018.1.18-py2.7.egg',
'/Library/Python/2.7/site-packages/urllib3-1.22-py2.7.egg',
'/Library/Python/2.7/site-packages/idna-2.6-py2.7.egg',
'/Library/Python/2.7/site-packages/chardet-3.0.4-py2.7.egg',
'/Users/karlzheng/src/myapp/waves',
'/Users/karlzheng/bashrc/pythonlib',
'/System/Library/Frameworks/Python.framework/Versions/2.7/lib/python27.zip',
'/System/Library/Frameworks/Python.framework/Versions/2.7/lib/python2.7',
'/System/Library/Frameworks/Python.framework/Versions/2.7/lib/python2.7/plat-darwin',
'/System/Library/Frameworks/Python.framework/Versions/2.7/lib/python2.7/plat-mac',
'/System/Library/Frameworks/Python.framework/Versions/2.7/lib/python2.7/plat-mac/lib-scriptpackages',
'/System/Library/Frameworks/Python.framework/Versions/2.7/lib/python2.7/lib-tk',
'/System/Library/Frameworks/Python.framework/Versions/2.7/lib/python2.7/lib-old',
'/System/Library/Frameworks/Python.framework/Versions/2.7/lib/python2.7/lib-dynload',
'/Library/Python/2.7/site-packages',
'/System/Library/Frameworks/Python.framework/Versions/2.7/Extras/lib/python',
'/System/Library/Frameworks/Python.framework/Versions/2.7/Extras/lib/python/PyObjC']

# sys.path.append("/Library/Python/2.7/site-packages/")
for p in mypath:
    sys.path.append(p)
```

