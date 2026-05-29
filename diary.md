---
layout: default
title: "Diary"
---

### Diary

{% assign posts_by_month = site.posts | group_by_exp: "post", "post.date | date: '%Y-%m'" %}

{% for month in posts_by_month %}
  <h2 class="thin">{{ month.name }}</h2>
  <ul>
    {% for post in month.items %}
      <li>
        <a href="{{ post.url | relative_url }}">{{ post.title }}</a>
      </li>
    {% endfor %}
  </ul>
{% endfor %}
