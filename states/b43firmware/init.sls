firmware-b43-installer:
  pkg.installed

others-broadcom-firmwares:
  pkg:
    - absent
    - names:
      - b43-fwcutter
      - firmware-b43legacy-installer
      - broadcom-sta-source
      - bcmwl-kernel-source
