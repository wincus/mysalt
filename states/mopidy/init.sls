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
  pkg.latest:
    - refresh: True

mopidy-spotify:
  pkg.latest:
    - refresh: True

/home/jon/.config/mopidy/mopidy.conf:
  file.symlink:
    - target: /home/jon/20-PersonalConfig/mopidy/mopidy.conf
    - force: True

/etc/mopidy/mopidy.conf:
  file.symlink:
    - target: /home/jon/20-PersonalConfig/mopidy/mopidy.conf
    - force: True

ncmpcpp:
  pkg.installed
