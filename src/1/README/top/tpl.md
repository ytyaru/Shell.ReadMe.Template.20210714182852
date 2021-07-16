{#- {% from 'macro/top.logo.md' import logo with context -%} -#}
{% from 'macro/languages.md' import languages with context -%}
{% from 'macro/badges.md' import badges with context -%}
{#- {% from 'macro/top.demo.md' import demo with context -%} -#}
{#- {% from 'macro/top.docs.md' import docs with context -%} -#}
{#- {{- logo() -}} -#}
{% include 'include/logo.md' -%}

# {{ repo.name }} {{ languages() }}

{{ badges() }}

{{ repo.summary }}

{% include 'include/demo.md' %}
{% include 'include/docs.md' %}
{#- {{ demo() }} -#}
{#- {{ docs() }} -#}

