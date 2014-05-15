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
    - mopidy
    - irssi

  'mac':
    - vim
    - base_packages
    - byobu
    - openssh
    - bash
    - mopidy
    - irssi
