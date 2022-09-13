---
layout: default
title: "Photo diaries"
---

### Posts

{% for post in site.posts %}
  {% if post.path contains "photos" %}
  [{{ post.title }}]({{ post.url }})
  {% endif %}
{% endfor %}
