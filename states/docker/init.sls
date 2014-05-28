docker:
  pkg:
    - installed
    - name: docker.io
  service:
    - running
    - name: docker.io
    - watch:
      - file: /home/jon/.dockercfg
      - file: /etc/default/docker.io
    - require:
      - pkg: docker

/usr/local/bin/docker:
  file.symlink:
    - target: /usr/bin/docker.io

/home/jon/.dockercfg:
  file.managed:
    - source: salt://docker/docker.cfg
    - force: True
    - template: jinja

/etc/default/docker.io:
  file.append:
    {% if grains['fqdn'] == 'inspiron' %}
    - text: DOCKER_OPTS="-dns 8.8.8.8 -dns 8.8.4.4 -g /home/virtuales/docker"
    {% else %}
    - text: DOCKER_OPTS="-dns 8.8.8.8 -dns 8.8.4.4"
    {% endif %}
    - require:
      - pkg: docker
