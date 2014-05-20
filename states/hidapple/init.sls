/etc/modprobe.d/hid_apple.conf:
  file.append:
    - text: "options hid_apple fnmode=2"

update-initramfs -u -k all:
  cmd.wait:
    - cwd : /
    - watch:
      - file: /etc/modprobe.d/hid_apple.conf
