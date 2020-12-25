---
layout: post
categories: tech
title: Remove Ifdef Macro
typora-root-url: ../
---
## Remove Ifdef Macro

- Add new line at the end of source files to avoid "[No new line at end of file](https://qastack.cn/unix/18743/whats-the-point-in-adding-a-new-line-to-the-end-of-a-file)"

```shell
find . -name "*.h" | xargs -I{} unifdef {} -o {}
find . -name "*.c" | xargs -I{} unifdef {} -o {}
find . -name "*.cpp" | xargs -I{} unifdef {} -o {}
```

- unifdef some Macros like beblow:
```shell
find . -type d -name '.git' -prune -o -type d -name 'out' -prune -o -regex '.*\.\(h\|c\|cpp\)' | xargs -I{} unifdef -U__BT_ONE_BRING_TWO__ -U__INTERCONNECTION__ -o {} {}
```


#### Ref:

- [http://coan2.sourceforge.net](http://coan2.sourceforge.net)
- [http://stripcc.sourceforge.net](http://stripcc.sourceforge.net)
- [https://github.com/uncrustify/uncrustify](https://github.com/uncrustify/uncrustify)
- [https://git.enlightenment.org/tools/formatting.git](https://git.enlightenment.org/tools/formatting.git)
- [https://github.com/shr-project/enlightenment/tree/master/FORMATTING/ecrustify](https://github.com/shr-project/enlightenment/tree/master/FORMATTING/ecrustify)

