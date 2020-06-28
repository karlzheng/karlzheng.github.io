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

```c
.text           0x000000000c068ec8    0x7aa50 load address 0x000000003c068ec8
 *(.text*)
 .text          0x000000000c068ec8       0x5c /usr/local/Cellar/gcc-arm-none-eabi-49/20150925/bin/../lib/gcc/arm-none-eabi/4.9.3/armv7e-m/fpu/crtbegin.o
 .text          0x000000000c068f24       0x74 /usr/local/Cellar/gcc-arm-none-eabi-49/20150925/bin/../lib/gcc/arm-none-eabi/4.9.3/../../../../arm-none-eabi/lib/armv7e-m/fpu/crt0.o
                0x000000000c068f24                _mainCRTStartup
                0x000000000c068f24                _start
```

```assembly
0c068f24 <_mainCRTStartup>:
$t():
 c068f24:	4b15      	ldr	r3, [pc, #84]	; (c068f7c <_mainCRTStartup+0x58>)
 c068f26:	2b00      	cmp	r3, #0
 c068f28:	bf08      	it	eq
 c068f2a:	4b13      	ldreq	r3, [pc, #76]	; (c068f78 <_mainCRTStartup+0x54>)
 c068f2c:	469d      	mov	sp, r3
 c068f2e:	f5a3 3a80 	sub.w	sl, r3, #65536	; 0x10000
 c068f32:	2100      	movs	r1, #0
 c068f34:	468b      	mov	fp, r1
 c068f36:	460f      	mov	r7, r1
 c068f38:	4813      	ldr	r0, [pc, #76]	; (c068f88 <_mainCRTStartup+0x64>)
 c068f3a:	4a14      	ldr	r2, [pc, #80]	; (c068f8c <_mainCRTStartup+0x68>)
 c068f3c:	1a12      	subs	r2, r2, r0
 c068f3e:	f07a fc1b 	bl	c0e3778 <__memset_veneer>
 c068f42:	4b0f      	ldr	r3, [pc, #60]	; (c068f80 <_mainCRTStartup+0x5c>)
 c068f44:	2b00      	cmp	r3, #0
 c068f46:	d000      	beq.n	c068f4a <_mainCRTStartup+0x26>
 c068f48:	4798      	blx	r3
 c068f4a:	4b0e      	ldr	r3, [pc, #56]	; (c068f84 <_mainCRTStartup+0x60>)
 c068f4c:	2b00      	cmp	r3, #0
 c068f4e:	d000      	beq.n	c068f52 <_mainCRTStartup+0x2e>
 c068f50:	4798      	blx	r3
 c068f52:	2000      	movs	r0, #0
 c068f54:	2100      	movs	r1, #0
 c068f56:	0004      	movs	r4, r0
 c068f58:	000d      	movs	r5, r1
 c068f5a:	480d      	ldr	r0, [pc, #52]	; (c068f90 <_mainCRTStartup+0x6c>)
 c068f5c:	2800      	cmp	r0, #0
 c068f5e:	d002      	beq.n	c068f66 <_mainCRTStartup+0x42>
 c068f60:	480c      	ldr	r0, [pc, #48]	; (c068f94 <_mainCRTStartup+0x70>)
 c068f62:	f07a fc79 	bl	c0e3858 <__atexit_veneer>
 c068f66:	f079 fe97 	bl	c0e2c98 <____libc_init_array_veneer>
 c068f6a:	0020      	movs	r0, r4
 c068f6c:	0029      	movs	r1, r5
 c068f6e:	f000 f869 	bl	c069044 <main>
 c068f72:	f07a fb39 	bl	c0e35e8 <__exit_veneer>
 c068f76:	bf00      	nop
```



```
The symbol _start is the entry point of your program. That is, the address of that symbol is the address jumped to on program start. Normally, the function with the name _start is supplied by a file called crt0.o which contains the startup code for the C runtime environment. It sets up some stuff, populates the argument array argv, counts how many arguments are there, and then calls main. After main returns, exit is called.

If a program does not want to use the C runtime environment, it needs to supply its own code for _start. For instance, the reference implementation of the Go programming language does so because they need a non-standard threading model which requires some magic with the stack. It's also useful to supply your own _start when you want to write really tiny programs or programs that do unconventional things.
```

![image-20200627183439898](/images/cprogram/image-20200627183439898.png)

- #### Ref:

	- [https://stackoverflow.com/questions/29694564/what-is-the-use-of-start-in-c](https://stackoverflow.com/questions/29694564/what-is-the-use-of-start-in-c)