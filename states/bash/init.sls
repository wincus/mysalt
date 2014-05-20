/home/jon/.bashrc:
  file.symlink:
    - target: /home/jon/20-PersonalConfig/bash/.bashrc
    - force: True

/home/jon/.bash_aliases:
  file.symlink:
    - target: /home/jon/20-PersonalConfig/aliases/bash_aliases
    - force: True
