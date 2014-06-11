gnupg:
  pkg.installed

/home/jon/.gnupg:
  file.symlink:
    - target: /home/jon/20-PersonalConfig/gnupg
    - owner: jon
    - group: jon
