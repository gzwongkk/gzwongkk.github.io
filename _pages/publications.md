---
layout: page
permalink: /#publications
title: publications
description: A growing collection of cool visualization research publication.
years: [2023, 2022, 2021, 2020]
nav: true
nav_order: 2
---
<!-- _pages/publications.md -->
<div class="publications">

  {%- for y in page.years %}
    <h2 class="year">{{y}}</h2>
    {% bibliography -f {{site.scholar.bibliography}} -q @*[publish_year={{y}}]* %}
  {% endfor %}

</div>
