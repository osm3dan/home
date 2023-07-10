---
layout: memo_jp
title: 研究メモ
permalink: /jp/memo
---

研究に関する自分用メモです。

            <!-- Cateegory - Matlab -->
            <h1 id="Matlab" class="page-subheading"> Matlab </h1>
            <p class="memo-post-list">
              {% for post in site.tags['memo'] %}
              {% if post.category == 'jp' %}
              {% if post.cont == 'Matlab' %}
              {% if post.draft != true %}
              <!-- <span class="blog-post-date">{{ post.date | date: "%-m/%-d/%y" }}</span> -->
              <bold> ー </bold>
              <a href="{{ post.url | prepend: site.baseurl }}" class="memo-post-title">
                {{ post.title_jp }}
              </a>
              <br/>
              {% endif %}
              {% endif %}
              {% endif %}
              {% endfor %}
            </p>


