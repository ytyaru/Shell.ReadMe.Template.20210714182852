{%- if installation -%}
# Installation

## Tools

{% include 'os/common.md' ignore missing -%}
{% include 'os/windows.md' ignore missing -%}
{% include 'os/mac.md' ignore missing -%}
{% include 'os/linux-debian.md' ignore missing -%}
{% include 'os/linux-fedora.md' ignore missing -%}
{% include 'os/linux-arch.md' ignore missing -%}
{% include 'os/android.md' ignore missing -%}

    {%- if 'body' in installation %}
{{ installation.body }}

    {%- endif %}

## Packages

{% include 'sdk/csharp/dotnet.md' ignore missing -%}
{% include 'sdk/csharp/mono.md' ignore missing -%}
{% include 'sdk/rust/cargo.md' ignore missing -%}
{% include 'sdk/python/pipenv.md' ignore missing -%}
{% include 'sdk/python/pip.md' ignore missing -%}
{% include 'sdk/ruby/gem.md' ignore missing -%}

{%- endif %}
