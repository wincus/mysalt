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
      - git
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
