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
    - removed
  service:
    - dead
    - watch:
      - file: /etc/mopidy/mopidy.conf
      - pkg: mopidy
      - pkg: mopidy-spotify

mopidy-spotify:
  pkg.removed

/etc/mopidy/mopidy.conf:
  file.absent:
    - source: salt://mopidy/mopidy.conf
    - force: True
    - user: mopidy
    - group: audio
    - template: jinja

ncmpcpp:
  pkg.installed
