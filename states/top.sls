{% set virtual = salt['grains.get']('virtual','') %}

base:
  'inspiron':
    - base_packages
    {% if grains['virtual'] == 'physical' %}
    - kvm
    {% endif %}
