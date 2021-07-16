{% macro demo() -%}
{#-{% if repo.demo -%}-#}
{% if 'demo' in repo -%}
* [demo]({{ repo.demo }})
{#- [![img](docs/demo.png)](docs/index.html) -#}
{%- endif %}
{%- endmacro %}

