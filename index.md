---
layout: default
title: "Index"
---

## 日記を書くだけのサイト
{:.thin}

### Posts

{% for post in site.posts %}
  [{{ post.title }}]({{ post.url }})
{% endfor %}
