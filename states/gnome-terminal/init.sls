disable-annoying-bindings:
  cmd.run:
    - user: jon
    - group: jon
    - name: gconftool-2 --set /apps/gnome-terminal/keybindings/help  --type string "disabled"
    - env: 
      - DBUS_SESSION_BUS_ADDRESS: unix:abstract=/tmp/dbus-IwD1RkR9n9
