{% from 'macro/top.languages.md' import languages with context -%}
{% from 'macro/top.badges.md' import badges with context -%}
{% if repo.logo -%}
![logo]({{ repo.logo }})
{%- endif %}

# {{ repo.name }} {{ languages() }}

{{ badges() }}

{{ repo.summary }}

{% if repo.demo -%}
* [demo]({{ repo.demo }})
{%- endif %}
{% if repo.docs -%}
* [docs]({{ repo.docs }})
{%- endif %}

