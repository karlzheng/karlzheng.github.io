---
layout: post
categories: tech
title: paste an image over another by using python
---
## paste an image over another by using python

```python
#!env python
#https://www.cnblogs.com/lilinwei340/p/6474170.html
from PIL import Image
base_img = Image.open(ur'base.png')
base_img = base_img.convert("RGBA")
box = (800, 150)
tmp_img = Image.open(ur'logo.png')
#print(tmp_img)
tmp_img = tmp_img.convert("RGBA")
region = tmp_img
base_img.paste(region, box)
base_img.save('./out.png')
```



```shell
for f in $(ls 0*.png);do echo $f;/bin/cp $f base.png && python paste.py && /bin/mv out.png $f;done
```

