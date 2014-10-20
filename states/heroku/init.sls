herokurepo:
  pkgrepo.managed:
    - humanname: heroku
    - name: deb http://toolbelt.heroku.com/ubuntu ./
    - dist: ./
    - file: /etc/apt/sources.list.d/heroku.list
    - keyid: 0F1B0520
    - keyserver: keyserver.ubuntu.com
    - require_in:
      - pkg: heroku-toolbelt

heroku-toolbelt:
  pkg.latest
