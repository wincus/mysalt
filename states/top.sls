base:
  'inspiron':
    - vim
    - base_packages
    {% if grains['virtual'] == 'physical' %}
    - kvm
    {% endif %}
    - byobu
    - openssh
    - bash
