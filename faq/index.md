---
title: Frequently Asked questions
layout: page
---
{% for q in site.faq %}
## <a href="{{ site.baseurl }}{{ q.url }}">{{ q.title }}</a>
{{ q.content }}
{% endfor %}
