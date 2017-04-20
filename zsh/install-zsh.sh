# install zsh
sudo apt-get install zsh

# install oh-my-zsh: https://github.com/robbyrussell/oh-my-zsh
if [ ! -d ~/.oh-my-zsh ]; then
  mv ~/.oh-my-zsh ~/.oh-my-zsh_backup
  sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
fi

# bakcup .zshrc to .zshrc_backup
if [ -f ~/.zshrc ]; then
  mv ~/.zshrc ~/.zshrc_backup
fi

# link zshrc
ln -s zshrc ~/.zshrc
