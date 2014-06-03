openvpn:
  pkg.latest

/etc/default/openvpn:
  file.uncomment:
    - regex: ^AUTOSTART="none"

/etc/openvpn/jmoyano.crt:
  file.symlink:
    - target: /home/jon/20-PersonalConfig/vpns/silice/jmoyano.crt

/etc/openvpn/jmoyano.key:
  file.symlink:
    - target: /home/jon/20-PersonalConfig/vpns/silice/jmoyano.key

/etc/openvpn/silice-ca.crt:
  file.symlink:
    - target: /home/jon/20-PersonalConfig/vpns/silice/silice-ca.crt

/etc/openvpn/silice.conf:
  file.symlink:
    - target: /home/jon/20-PersonalConfig/vpns/silice/silice.conf

/etc/openvpn/silice-default-gw.conf:
  file.symlink:
    - target: /home/jon/20-PersonalConfig/vpns/silice/silice-default-gw.conf

