---
layout: default
title: "Diary"
---

### Diary

{% for post in site.posts %}
  [{{ post.title }}]({{ post.url }})
{% endfor %}