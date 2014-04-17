irssi:
  pkg.installed

irssiconfigfile:
  file:
    - replace
    - name: /home/jon/.irssi/config
    - pattern: ".*core = .*"
    - repl: " core = { real_name = \"Juan\"; user_name = \"jon\"; nick = \"wincus\"; };"
    - dryrun: false
    - require:
      - pkg: irssi
