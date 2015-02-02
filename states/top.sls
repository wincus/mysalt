base:
  'inspiron':
    - vim
    - base_packages
    {% if grains['virtual'] == 'physical' %}
    - qemu-kvm
    {% endif %}
    - byobu
    - openssh
    - bash
    - irssi
    - unity
    - firefox
    - git
    - sudo
    - vpn
    - spotify
    - gnupg
    - nm
    - docker
    - python-jira
    - heroku
    - mailcap

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
    - xbmc
    - vpn
    - spotify
    - gnupg
    - nm
    - python-jira
    - mailcap

  'hp':
    - vim
    - base_packages
    - byobu
    - openssh
    - bash
    - irssi
    - unity
    - firefox
    - git
    - docker
    - sudo
    - vpn
    - spotify
    - gnupg
    - nm
    - python-jira
    - heroku
    - mailcap
