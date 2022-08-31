---
layout: default
title: "Index"
---

## mkataoka73.github.io

[格ゲー日記](https://mkataoka73.github.io/fg){:target="_blank"}

### Posts

{% for post in site.posts %}
  [{{ post.title }}]({{ post.url }})
{% endfor %}
