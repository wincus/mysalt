firefox:
  pkg.latest


update-alternatives --set gnome-www-browser /usr/bin/firefox:
  cmd.wait:
    - watch:
      - pkg: firefox
