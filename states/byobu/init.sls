byobu:
  pkg.installed

/home/jon/.byobu/.tmux.conf:
  file.symlink:
    - target: /home/jon/20-PersonalConfig/byobu/tmux.conf

/home/jon/.byobu/windows.tmux:
  file.symlink:
    - target: /home/jon/20-PersonalConfig/byobu/windows.tmux

