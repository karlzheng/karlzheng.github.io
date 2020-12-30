---
layout: page
title: "KarlZheng's Notebook"
description: [Thinking/Doing/BelieveIn]
keywords: Karl, KarlZheng, IOT
comments: true
menu: 关于
permalink: /about/
---
## 👋About Me👋

- Karl Zheng is a computer science master degree holder. 
- Before joining Anker, he worked as a department manager in LinkCM. 
- He also worked in Ucweb, Alibaba and Meizu.
- He has participated in or led the development of smartphones, smart home devices, wearing equipments, TV boxes, video conferencing terminals etc.

## 我的开源项目：

### 技术 🌱

* [Bashrc](https://github.com/karlzheng/bashrc) ： 👋十余年打造，超过两千行的Bashrc，极大提高在Linux工作的效率🔥👋
* [Vimrc](https://github.com/karlzheng/vimrc) ：   👋打造十余年，超过两千行的Vimrc， 极大提高编写程序代码的效率🔥👋

## 联系

{% for website in site.data.social %}
* {{ website.sitename }}：[@{{ website.name }}]({{ website.url }})
{% endfor %}

## Skill Keywords

{% for category in site.data.skills %}
### {{ category.name }}
<div class="btn-inline">
{% for keyword in category.keywords %}
<button class="btn btn-outline" type="button">{{ keyword }}</button>
{% endfor %}
</div>
{% endfor %}
