vlc:
  pkg.installed

/var/local/launch-streaming:
  file.managed:
    - contents: |
     cvlc -vvv dvb-t://frequency=533000000:bandwidth=0 --sout '#standard{mux=ts,dst=239.255.2.113,access=udp,sap,name=deportv}'
