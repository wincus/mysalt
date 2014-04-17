git:
  pkg:
    - installed

/home/jon/.gitconfig:
  file:
    - managed
    - source: salt://git/config
    - user: jon
    - gtoup: jon
    - template: jinja
    - makedirs: true
    - require:
      - pkg: git
