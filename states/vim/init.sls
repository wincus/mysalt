vim:
  pkg:
    - installed
    {% if grains['os_family'] == 'RedHat' %}
    - name: vim-enhanced
    {% else %}
    - name: vim
    {% endif %}


/home/jon/.vim:
  file:
    - directory
    - user: jon

/home/jon/.vimrc:
  file:
    - managed
    - source: salt://vim/config

git clone https://github.com/gmarik/vundle.git /home/jon/.vim/bundle/vundle:
  cmd.wait:
    - watch:
      - pkg: vim
