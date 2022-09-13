---
layout: default
title: "Index"
---

## mkataoka73.github.io

[格ゲー日記](https://mkataoka73.github.io/fg){:target="_blank"}
[Photos](/photos){:.navs}

### Posts

{% for post in site.posts %}
  {% unless post.path contains "photos" %}
  [{{ post.title }}]({{ post.url }})
  {% endunless %}
{% endfor %}
