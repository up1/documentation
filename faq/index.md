---
title: Frequently Asked questions
layout: page
---
# Frequently Asked Questions

{% for q in site.faq %}
## <a href="{{ site.baseurl }}{{ q.url }}">{{ q.title }}</a>
{{ q.content }}
{% endfor %}
