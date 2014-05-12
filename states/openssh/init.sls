openssh-server:
  pkg:
    - installed

openssh-client:
  pkg:
    - installed
    - require:
      - file: /home/jon/.ssh

/home/jon/.ssh:
  file.symlink:
    - target: /home/jon/20-PersonalConfig/openssh
