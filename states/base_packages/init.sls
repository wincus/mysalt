mypkgs:
  pkg.installed:
    - pkgs:
      - telnet
      - nmap
      - lftp
      - editmoin
      - vorbis-tools
      - subversion
      - youtube-dl
      - mplayer
      - revelation
      - tcpdump
      - irssi
      - whois
      - dnsutils
      - synergy
      - openssh-server
      - curl
      - xsel
      - clipit
      - mutt
      - urlview
      - mc
      - ipython
      - fabric
      - libvirt-bin
      - virt-manager
      - virt-viewer
      - tshark
      - dtrx  
      - dstat 
      - autojump
      - ngrep 
      - python-virtualenv
      - mysql-workbench # I hate to need you, but I do ...
      - skype # this requires trusty/partner repository enabled
              # aka deb http://archive.canonical.com/ubuntu trusty partner
              # I hate this, why do they make me use it anyway?

# things I don't like to have installed
notmypkgs:
  pkg.purged:
    - pkgs:
      - thunderbird
      - rhythmbox
      - brasero
      - aisleriot
