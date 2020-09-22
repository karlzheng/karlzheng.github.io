---
layout: post
categories: tech
title: is_bss_initialize_in_C
typora-root-url: ../
---
## is_bss_initialize_in_C

[bss wiki](https://en.wikipedia.org/wiki/.bss):

```
In C, statically-allocated objects without an explicit initializer are initialized to zero (for arithmetic types) or a null pointer (for pointer types). 
```

[Howto: Porting newlib A Simple Guide](https://www.embecosm.com/appnotes/ean9/html/ch05s02s04.html)

```
BSS is the area of memory used to hold static variables which must be initialized to zero. Its start and end are defined by two variables from the linker/loader, __bss_start and end respectively.
```

