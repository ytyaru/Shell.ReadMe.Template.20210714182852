{%- if installation -%}
# Installation

{% include 'common.md' ignore missing -%}
{% include 'windows.md' ignore missing -%}
{% include 'mac.md' ignore missing -%}
{% include 'linux-debian.md' ignore missing -%}
{% include 'linux-fedora.md' ignore missing -%}
{% include 'android.md' ignore missing -%}

    {%- if 'body' in installation %}
{{ installation.body }}

    {%- endif %}
{%- endif %}

