---
layout: post
categories: tech,mermaid
title: mermaid 4 github pages
---
## 在github pages中使用mermaid画图

I read:

[https://segmentfault.com/q/1010000011361671](https://segmentfault.com/q/1010000011361671),

It said:

[**Embed-Chart-in-Jekyll**](https://github.com/kkpattern/kkpattern.github.com/blob/master/_posts/2015-05-15-Embed-Chart-in-Jekyll.markdown),

```html
To do this, you only need to include mermaid on your web page:

<script src="mermaid.full.min.js"></script>
Then define your chart like this:

<div class="mermaid">
graph TD;
    A-->B;
    A-->C;
    B-->D;
    C-->D;
</div>
```

then I down mermaid from:

[https://mermaidjs.github.io/usage.html](https://mermaidjs.github.io/usage.html)

[<https://unpkg.com/mermaid/>](https://unpkg.com/mermaid/)

[https://unpkg.com/mermaid@8.0.0-rc.8/dist/](https://unpkg.com/mermaid@8.0.0-rc.8/dist/)

[https://unpkg.com/mermaid@8.0.0-rc.8/dist/mermaid.min.js](https://unpkg.com/mermaid@8.0.0-rc.8/dist/mermaid.min.js)

#### Here below is an example:

<script src="/js/mermaid.min.js"></script>
<div class="mermaid">
sequenceDiagram
  A->> B: Query
  B->> C: Forward query
  Note right of C: Thinking...
  C->> B: Response
  B->> A: Forward response
</div>
#### Ref:

[https://www.jianshu.com/p/4bae409248b3](https://www.jianshu.com/p/4bae409248b3)

[https://github.com/Redisrupt/mermaid-diagrams](https://github.com/Redisrupt/mermaid-diagrams)

[https://github.com/jasonbellamy/jekyll-mermaid](https://github.com/jasonbellamy/jekyll-mermaid)

[https://www.jianshu.com/p/4bae409248b3](https://www.jianshu.com/p/4bae409248b3)




