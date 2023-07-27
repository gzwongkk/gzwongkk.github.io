---
layout: page
permalink: /publications_selectable/
title: publications_selectable
description: A growing collection of cool visualization research publication.
years: [2023, 2022, 2021, 2020]
nav: false
nav_order: 1
---
<!-- _pages/publications.md -->
<div class="publications">

<ul>
  {%- for item in site.data.area -%}
  <li><h2>{{item.name}}</h2></li>
  {% endfor %}
</ul>

{%- for y in page.years %}
  <h2 class="year">{{y}}</h2>
  {% bibliography -f papers -q @*[year={{y}}]* -q @*[area!="va"]* %}
{% endfor %}

</div>
