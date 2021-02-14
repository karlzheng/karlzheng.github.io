---
layout: post
categories: tech
title: Daw graph by using Dot
typora-root-url: ../
---
## Daw graph by using Dot

<img src="/images/dotimage/dot-examples.png" alt="image-20210214183810188" style="zoom:50%;" />

```c
![Alt text](https://g.gravizo.com/svg?
  digraph G {
    aize ="4,4";
    main [shape=box];
    main -> parse [weight=8];
    parse -> execute;
    main -> init [style=dotted];
    main -> cleanup;
    execute -> { make_string; printf}
    init -> make_string;
    edge [color=red];
    main -> printf [style=bold,label="100 times"];
    make_string [label="make a string"];
    node [shape=box,style=filled,color=".7 .3 1.0"];
    execute -> compare;
  }
)
```

- #### Ref:

- [https://support.typora.io/What%27s-New-0.9.54/](https://support.typora.io/What%27s-New-0.9.54/)

- [https://github.com/ZengjfOS/UMLTree.git](https://github.com/ZengjfOS/UMLTree.git)