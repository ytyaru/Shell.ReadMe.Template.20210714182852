{%- macro logo() -%}
{#- {% if repo.logo -%} -#}
{%- if 'logo' in repo -%}
![logo]({{ repo.logo }})
{%- endif -%}
{%- endmacro -%}
