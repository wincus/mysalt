byobu:
  pkg.installed

/home/jon/.byobu/.tmux.conf:
  file.symlink:
    - target: /home/jon/20-PersonalConfig/byobu/tmux.conf
    - force: True

/home/jon/.byobu/windows.tmux:
  file.symlink:
    - target: /home/jon/20-PersonalConfig/byobu/windows.tmux
    - force: True


/home/jon/.byobu/bin:
  file.symlink:
    - target: /home/jon/20-PersonalConfig/byobu/bin
    - force: true

/home/jon/.byobu/statusrc:
  file.symlink:
    - target: /home/jon/20-PersonalConfig/byobu/statusrc
    - force: true

/home/jon/.wgetrc:
  file.managed:
    - user: jon
    - mode: 400
    - contents: |
        user={{ pillar ['nagios_username'] }}
        password={{ pillar ['nagios_password'] }}
