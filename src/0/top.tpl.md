{#- {% from 'macro/top.logo.md' import logo with context -%} -#}
{% from 'macro/top.languages.md' import languages with context -%}
{% from 'macro/top.badges.md' import badges with context -%}
{#- {% from 'macro/top.demo.md' import demo with context -%} -#}
{#- {% from 'macro/top.docs.md' import docs with context -%} -#}
{#- {{- logo() -}} -#}
{% include 'top/include/logo.md' -%}
# {{ repo.name }} {{ languages() }}

{{ badges() }}

{{ repo.summary }}

{% include 'top/include/demo.md' %}
{% include 'top/include/docs.md' %}
{#- {{ demo() }} -#}
{#- {{ docs() }} -#}

