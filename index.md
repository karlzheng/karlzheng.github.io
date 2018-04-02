---
<!--layout: default-->
<!--layout: post-->
<!--layout: home-->
layout: default
title: Thinking/Believe in (KarlZheng's blog)
---
<h2>{{ page.title }}</h2>
<p>New Article</p>
<ul>
　　{% for post in site.posts %}
　　　　<li>{{ post.date | date_to_string }} <a href="{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a></li>
　　{% endfor %}
</ul>
