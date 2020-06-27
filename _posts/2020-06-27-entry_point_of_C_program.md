---
layout: post
categories: tech
title: entry_point_of_C_program
typora-root-url: ../
---
## entry_point_of_C_program

```c
#if defined(__ARMCC_VERSION) && !defined(NOSTD)
    bl    __rt_entry
#else
    bl    _start
#endif
```



```
The symbol _start is the entry point of your program. That is, the address of that symbol is the address jumped to on program start. Normally, the function with the name _start is supplied by a file called crt0.o which contains the startup code for the C runtime environment. It sets up some stuff, populates the argument array argv, counts how many arguments are there, and then calls main. After main returns, exit is called.

If a program does not want to use the C runtime environment, it needs to supply its own code for _start. For instance, the reference implementation of the Go programming language does so because they need a non-standard threading model which requires some magic with the stack. It's also useful to supply your own _start when you want to write really tiny programs or programs that do unconventional things.
```

![image-20200627183439898](/images/cprogram/image-20200627183439898.png)

- #### Ref:

	- [https://stackoverflow.com/questions/29694564/what-is-the-use-of-start-in-c](https://stackoverflow.com/questions/29694564/what-is-the-use-of-start-in-c)