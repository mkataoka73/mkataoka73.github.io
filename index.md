---
layout: default
title: "Index"
---

## mkataoka73.github.io

[Diary](/diary){:.navs}
[Photos](/photos){:.navs}
[Favs](/favs){:.navs}
[Profile](/profile){:.navs}

### Recent Posts

{% for post in site.posts limit:5 %}
  {% unless post.path contains "photos" %}
  [{{ post.title }}]({{ post.url }})
  {% endunless %}
{% endfor %}
