{% set host = salt['grains.get']('host') %}
{% set os = salt['grains.get']('os') %}
{% set company = 'thinknyx' %}

custom_file:
  file.managed:
    - name: /var/tmp/fileone
    - contents:
        - "My server {{ host }} with {{ os }} belongs to {{ company }}"

net_tools:
  pkg.installed:
    {% if grains['os'] == 'Ubuntu' %}
    - name: net-tools
    {% endif %}

{% for usr in ['harry','sarah','racheal'] %}
{{ usr }}:
  user.present
{% endfor %}
