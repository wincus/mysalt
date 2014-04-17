eggdrop:
  pkg.installed

/home/jon/.eggdrop/config:
  file:
    - managed
    - source: salt://eggdrop/config
    - user: jon
    - group: jon
    - mode: 644
    - template: jinja
    - makedirs: True
    - require:
      - pkg: eggdrop
