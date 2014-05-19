/tmp/muttrc:
  file.managed:
    - source: salt://mutt/muttrc
    - template: jinja
    - context:
      key: value
