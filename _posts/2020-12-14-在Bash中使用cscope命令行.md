---
layout: post
categories: tech
title: 在Bash中使用cscope命令行
typora-root-url: ../
---
## 在Bash中使用cscope命令行

- 首先我们 man cscope

```
   SYNOPSIS
       cscope [-bCcdehkLlqRTUuVvX] [-Fsymfile] [-freffile] [-Iincdir] [-iname-
       file] [-0123456789pattern] [-pn] [-sdir] [files]
	-[0-9]pattern
	      Go to input field num (counting from 0) and find pattern.
```

- 在vim中help:

	```bash
					      *cscope-find* *cs-find* *E567*
	    find  : Query cscope.  All cscope query options are available
		    except option #5 ("Change this grep pattern").
	
		USAGE	:cs find {querytype} {name}
	
		    {querytype} corresponds to the actual cscope line
		    interface numbers as well as default nvi commands:
	
			0 or s: Find this C symbol
			1 or g: Find this definition
			2 or d: Find functions called by this function
			3 or c: Find functions calling this function
			4 or t: Find this text string
			6 or e: Find this egrep pattern
			7 or f: Find this file
			8 or i: Find files #including this file
			9 or a: Find places where this symbol is assigned a value
	```

- 然后，我们就可以在命令行中查找字符定义了:

```shell
cscope -d -l -L -s app_ibrt_init
cscope -d -l -L -4 app_ibrt_init
cscope -d -l -L -4 __AI_VOICE__
```

