spotiyrepo:
  pkgrepo.managed:
    - humanname: spotify
    - name:  deb http://repository.spotify.com stable non-free
    - dist: stable
    - file: /etc/apt/sources.list.d/spotify.list
    - keyid: 94558F59
    - keyserver: keyserver.ubuntu.com
    - require_in:
      - pkg: spotify-client

spotify-client:
  pkg.latest
