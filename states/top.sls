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
    - unity
    - firefox
    - git
    - sudo

  'mac':
    - vim
    - base_packages
    - byobu
    - openssh
    - bash
    - mopidy
    - irssi
    - unity
    - firefox
    - b43firmware
    - hidapple
    - git
    - docker
    - sudo
