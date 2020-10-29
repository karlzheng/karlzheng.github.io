---
layout: post
categories: tech
title: 在gcc的 fdump tree上使用graph选项
typora-root-url: ../
---
## 在gcc的 fdump tree上使用graph选项

```bash
gcc 1.c -fdump-tree-ssa-graph=1.dot
export GRAPHVIZ_DOT=/usr/local/Cellar/graphviz/2.44.1/bin/dot
/usr/local/Cellar/graphviz/2.44.1/bin/dot -Tpng 1.dot -o 1.png
```



- #### Ref:

	- [http://tinylab.org/source-code-analysis-how-best-to-draw-a-function-call/](http://tinylab.org/source-code-analysis-how-best-to-draw-a-function-call/)