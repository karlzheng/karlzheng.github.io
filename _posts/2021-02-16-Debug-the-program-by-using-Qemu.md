---
layout: post
categories: tech
title: Debug the program by using Qemu
typora-root-url: ../
---
## Debug the program by using Qemu



- [Executing in Qemu](http://shukra.cedt.iisc.ernet.in/edwiki/EmSys:Starting_Cortex-M3_Development_Using_the_GNU_Tool_Chain_-_Part_1)

[**Qemu**](http://wiki.qemu.org/Main_Page) supports many cpu models, since we are developing programs for ARM, we will use - **qemu-system-arm**. We can Execute/Debug in [**Qemu**](http://wiki.qemu.org/Main_Page) by attaching to GDB. Open a terminal window and execute the following command.

```
$ qemu-system-arm -cpu cortex-m3 -S -gdb tcp::1234 -nographic -kernel add.elf 
```

- **-cpu cortex-m3** is the option for simulating cortex-m3 processor
- **-S** Do not start CPU at startup 
- **-gdb**, **tcp::1234** Attach to GDB through tcp port 1234
- **-nographic** disable features we don't need
- **-kernel add.elf** tells qemu to execute directly from our object file.

#### Run/Debug the program (in another terminal window)

```
$ arm-none-eabi-gdb add.elf
$ (gdb) target remote localhost:1234
$ (gdb) load
$ (gdb) break _start
$ (gdb) continue
```

The program should break at **_start** label. Now, we can exmine the memory, registers, or dis-assemble the code.

- **Dumping memory contents**

```
(gdb) x/18wx 0x0
0x0 <pfnVectors>:	0x20004000	0x00000049	0x00000059	0x00000059
0x10 <pfnVectors+16>:	0x00000059	0x00000059	0x00000059	0x00000000
0x20 <pfnVectors+32>:	0x00000000	0x00000000	0x00000000	0x00000059
0x30 <pfnVectors+48>:	0x00000059	0x00000000	0x00000059	0x00000059
0x40 <pfnVectors+64>:	0x00000059	0x00000059
(gdb)
```

The above memory dump is vector table. The 1st entry is 0x20004000 which is our **Top_Of_Stack** (_estack) and the 2nd entry is our program **_start** address - 0x00000048 (instead of 0x00000048 it is 0x00000049 is stored why?). We can verify these addresses from our above symbol table dump.

- **Dis-assembling**

```
(gdb) x/4iw _start
=> 0x48 <_start>:	mov.w	r0, #5
   0x4c <_start+4>:	mov.w	r1, #4
   0x50 <_start+8>:	add.w	r2, r1, r0
   0x54 <stop>:	bl	0x54 <stop>
(gdb) 
```

- **Single step through the code**

```
(gdb)step
```

- **Verify Registers**

```
(gdb)info registers
```

- **Quit gdb**

```
(gdb) quit
A debugging session is active.
Inferior 1 [Remote target] will be killed.
Quit anyway? (y or n) y
```

Typing **y** followed by **return** takes you back to the terminal prompt.

Please note that when you quit **gdb**, **qemu** is also terminated.

```
QEMU: Terminated via GDBstub
```

This start-up guide clearly demonstrated that without the hardware, we can write programs for ARM and simulate it in Qemu.



- #### Ref:

	- [http://shukra.cedt.iisc.ernet.in/edwiki/EmSys:Starting_Cortex-M3_Development_Using_the_GNU_Tool_Chain_-_Part_1](http://shukra.cedt.iisc.ernet.in/edwiki/EmSys:Starting_Cortex-M3_Development_Using_the_GNU_Tool_Chain_-_Part_1)
	- [https://github.com/arunkuttiyara/cortex_m3_development](https://github.com/arunkuttiyara/cortex_m3_development)

