firmware-b43-installer:
  pkg.installed

/etc/modprobe.d/blacklist-bcm43.conf:
  file.comment:
    - regex: ^blacklist b43$
