---
layout: post
categories: tech
title: disable astyle format
typora-root-url: ../
---
## disable astyle format

```c
/* clang-format off */
/* INDENT-OFF */

/* INDENT-ON */
/* clang-format on */
```

And for uncrustify, see: [https://github.com/uncrustify/uncrustify/blob/master/etc/ben.cfg](https://github.com/uncrustify/uncrustify/blob/master/etc/ben.cfg)

```makefile
# Override the default ' *INDENT-OFF*' in comments for disabling processing of part of the file.
disable_processing_cmt                    = ""         # string

# Override the default ' *INDENT-ON*' in comments for enabling processing of part of the file.
enable_processing_cmt                     = ""         # string
```



- ##### Ref:

	- [https://github.com/uncrustify/uncrustify/blob/master/etc/ben.cfg](https://github.com/uncrustify/uncrustify/blob/master/etc/ben.cfg)

