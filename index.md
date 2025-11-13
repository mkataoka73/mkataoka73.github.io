---
layout: default
title: "Index"
---

## mkataoka73.github.io

[Photos](/photos){:.navs}
[Favs](/favs){:.navs}

### Posts

{% for post in site.posts %}
  {% unless post.path contains "photos" %}
  [{{ post.title }}]({{ post.url }})
  {% endunless %}
{% endfor %}
