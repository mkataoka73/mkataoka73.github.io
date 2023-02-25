---
layout: default
title: "Photo diaries"
---

### Posts

{% for post in site.photos %}
  [{{ post.title }}]({{ post.url }})
{% endfor %}