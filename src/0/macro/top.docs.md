{% macro docs() -%}
{#-{% if repo.docs -%}-#}
{% if 'docs' in repo -%}
* [docs]({{ repo.docs }})
{%- endif %}
{%- endmacro %}
