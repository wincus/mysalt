mopidyrepo:
  pkgrepo.managed:
    - humanname: Mopidy
    - name: deb http://apt.mopidy.com/ stable main contrib non-free
    - dist: stable
    - file: /etc/apt/sources.list.d/mopidy.list
    - keyid: 271D2943
    - keyserver: keyserver.ubuntu.com
    - require_in:
      - pkg: mopidy
      - pkg: mopidy-spotify

mopidy:
  pkg:
    - installed
  service:
    - dead
    - watch:
      - file: /etc/mopidy/mopidy.conf
      - pkg: mopidy
      - pkg: mopidy-spotify

mopidy-spotify:
  pkg.installed

/etc/mopidy/mopidy.conf:
  file.managed:
    - source: salt://mopidy/mopidy.conf
    - force: True
    - user: mopidy
    - group: audio
    - template: jinja

ncmpcpp:
  pkg.installed
