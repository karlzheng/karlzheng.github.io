---
layout: post
categories: tech
title: get_parameter_passed_by_xargs
typora-root-url: ../
---
## get_parameter_passed_by_xargs

```shell
find -iname "*.png"|xargs -I {} /bin/cp {} $(fp)
```

