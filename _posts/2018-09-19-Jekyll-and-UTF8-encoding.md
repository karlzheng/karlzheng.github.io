---
layout: post
categories: tech
title: Jekyll and UTF8 encoding
---
## Jekyll and UTF8 encoding

I want to preview the website, and then run:

```bash
bundle exec jekyll serve
```



it prompts:

```
  Conversion error: Jekyll::Converters::Scss encountered an error while converting 'assets/css/style.scss':
                    Invalid US-ASCII character "\xE2" on line 5
```

And then:

```bash
cd assets
find . -name "*.css"|xargs hexdump -C|grep E2
```

it finds nothing;

Finally:

```bash
export LC_ALL="zh_CN.UTF-8"
bundle exec jekyll serve
```



it runs ok.