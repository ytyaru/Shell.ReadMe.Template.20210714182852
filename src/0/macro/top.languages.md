{% macro languages(default='en-gb') -%}
{% for lang_country in repo.nature_languages -%}
{% set lc = lang_country.split('-') -%}
{% set lang = lc[0] -%}
{% if 1 < lc|length -%}
    {% set country = lc[1] -%}
{% else -%}
    {%- if   'ja' == lang -%}{%- set country = 'jp' -%}{# 言語＝日本語なら国＝日本 -#}
    {%- elif 'en' == lang -%}{%- set country = 'gb' -%}{# 言語＝英語なら国＝イギリス(GB|UK) -#}
    {%- else -%}{%- endif -%}
{% endif -%}
{% set flag = "https://raw.githubusercontent.com/madebybowtie/FlagKit/master/Assets/PNG/"~ country.upper() ~".png" -%}
{% set lang_name = "言語名" -%}
[![{{ country }}]({{ flag }})](README.{{ lang }}.md "{{ lang_name }}")
{%- endfor %}
{%- endmacro %}

