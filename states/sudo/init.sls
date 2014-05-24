/etc/sudoers:
  file.replace:
    - pattern: ^%sudo.*
    - repl: "%sudo        ALL=NOPASSWD: ALL"
    - count: 1
    - show_changes: True
