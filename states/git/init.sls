git:
  pkg:
    - installed

/home/jon/.gitconfig:
  file:
    - managed
    - source: salt://git/config
    - user: jon
    - group: jon
    - template: jinja
    - makedirs: true
    - require:
      - pkg: git
