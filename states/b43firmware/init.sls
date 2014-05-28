firmware-b43-installer:
  pkg.installed

others-broadcom-firmwares:
  pkg:
    - purged
    - names:
      - firmware-b43legacy-installer
      - broadcom-sta-source
      - bcmwl-kernel-source
