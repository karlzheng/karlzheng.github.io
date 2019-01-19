---
layout: post
categories: tech vim
title: 史上最全的正则表达式多行匹配例子 from karlzheng@csdn
typora-root-url: ../
---
## 史上最全的正则表达式多行匹配例子 from karlzheng@csdn
[https://blog.csdn.net/ZhengKarl/article/details/8121266](https://blog.csdn.net/ZhengKarl/article/details/8121266)

经常碰到想查找多行匹配的时候，比如：有一份log如下：

```c
commit 0b79912f43f110f64f60aba1244c71c4b0656b4c
Author: xxx <xxx@758d13f7-6a34-8146-8d86-37c7f849097d>
Date:   Mon Oct 22 09:26:30 2012 +0000
    usb输出更多的调试信息
commit e1d14cca93a417327d78a40a2787cb137ef8ef1d
Author: zhengkl <zhengkl@758d13f7-6a34-8146-8d86-37c7f849097d>
Date:   Mon Oct 22 08:58:04 2012 +0000
    修改modem hsic_net_data_handler处理函数
commit e02c4740435cd4cbbd1ee7e31b513ffcb03ea906
Author: xxx <xxx@758d13f7-6a34-8146-8d86-37c7f849097d>
Date:   Mon Oct 22 07:45:02 2012 +0000
    lcd add gamma_setting version 1 for ID code 0x1h.
```
#### 想实现git log --author zhengkl的功能，使用脚本如下：

- #### vim脚本：
```python
func! MyFindEndLine(linenr)
	let l:buf_end_line = line('$')
	let l:line = a:linenr
	while l:line <= l:buf_end_line
		let l:line += 1
		let l:line_buf = getline(l:line)
		if matchstr(l:line_buf, "^commit") != ""
			return (l:line - 1)
		en
	endw
	return l:buf_end_line
endf
func! MyFindTextBlockFunc(string)
	let g:mylist = []
	exec "g /".a:string."/call add(g:mylist, line('.'))"
	let l:text = []
	for i in g:mylist
		let l:end_line = MyFindEndLine(i)
		call extend(l:text,  getline(i - 1, l:end_line))
		call writefile(l:text, "test.txt")
	endfo
endf
:call MyFindTextBlockFunc("zhengkl")
```
- #### awk脚本：
```shell
#!/bin/awk -f
{
	is_end_file = 1
	if (match($0, "commit")) {
		a = $0
		do {
			is_end_file = !getline
			if (match($0, "zhengkl")) {
				print a
				print $0
				is_end_file = !getline
				while (! match($0, "commit")) {
					print $0
					is_end_file = getline
					a = $0
				}
			} else {
				is_end_file = !getline
				a =$0
			}
		} while(is_end_file != 1);
	}
}
```
- #### sed脚本：
```
/^commit/ {
		: get_commit
		h
		n
		/zhengkl/ {
				H
				x
				p
				: readagain
				n
				/^commit/ {
					b get_commit
				}
				p
				b readagain
		}
}
```
- **当然最方便的还是vim命令：**

```shell
g/zhengkl/-1;,/commit/-1 write >> test.txt
```

#### Ref:

- [https://blog.csdn.net/ZhengKarl/article/details/8121266](https://blog.csdn.net/ZhengKarl/article/details/8121266)