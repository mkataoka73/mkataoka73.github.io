---
layout: default
title: "Index"
---

## English Blog

{% for post in site.posts %}
  [{{ post.title }}]({{ post.url }}){:target="_blank"}
{% endfor %}
