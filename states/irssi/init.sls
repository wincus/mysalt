irssi:
  pkg.installed

/home/jon/.irssi:
  file.directory:
    - user: jon
    - group: jon

/home/jon/.irssi/config:
  file.symlink:
    - target: /home/jon/20-PersonalConfig/irssi/config
    - force: true
    - require:
      - file: /home/jon/.irssi
