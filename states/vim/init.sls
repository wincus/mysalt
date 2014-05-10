vim:
  pkg:
    - installed
    - name: vim

/home/jon/.vimrc:
  file.symlink:
    - target: /home/jon/20-PersonalConfig/vim/vimrc 

https://github.com/gmarik/Vundle.vim.git:
  git.latest:
    - target: /home/jon/.vim/bundle/Vundle.vim
    - user: jon

vim +PluginInstall +qall:
  cmd.run:
    - user: jon
