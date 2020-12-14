---
layout: post
categories: tech
title: temporary disable Clang format for avoid affecting Macros
typora-root-url: ../
---
## temporary disable Clang format for avoid affecting Macros

- The SDK want to include: XXX/XXX_map.h: eg, ARM_M4F/ARM_M4F_map.h

```
#include "ARM_M4F/ARM_M4F_map.h"
```

- it wrote:

	```
	#define _TO_STRING_A(s) #s
	#define _TO_STRING(s) _TO_STRING_A(s)
	#define MAP(c) c/c##_##map.h
	#define CPU_MAP(c) _TO_STRING(MAP(c))
	
	#include CPU_MAP(arm)
	```

	it's working. But after Clang-format formats it, it has become the code below:

```
#define _TO_STRING_A(s) #s
#define _TO_STRING(s) _TO_STRING_A(s)
#define MAP(c) c / c##_##map.h
#define CPU_MAP(c) _TO_STRING(MAP(c))

#include CPU_MAP(arm)
```

it doesn't work!!

we need to prevent Clang-format formats the macro "MAP(c)". 

After google, we knew "// clang-format off" can Disabling Formatting on a Piece of Code:

```
#define _TO_STRING_A(s) #s
#define _TO_STRING(s) _TO_STRING_A(s)
// clang-format off
#define MAP(c) c/c##_##map.h
// clang-format on
#define CPU_MAP(c) _TO_STRING(MAP(c))

#include CPU_MAP(arm)
```

It's working, Well done!!



##### Ref:

- [https://stackoverflow.com/questions/27111078/can-clang-format-align-variable-or-macro-assignments-in-columns](https://stackoverflow.com/questions/27111078/can-clang-format-align-variable-or-macro-assignments-in-columns)

- [https://embeddedartistry.com/blog/2017/10/23/creating-and-enforcing-a-code-formatting-standard-with-clang-format/](https://embeddedartistry.com/blog/2017/10/23/creating-and-enforcing-a-code-formatting-standard-with-clang-format/)

	