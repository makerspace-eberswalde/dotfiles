# install zsh
sudo apt-get install zsh

# install oh-my-zsh: https://github.com/robbyrussell/oh-my-zsh
if [ ! -d ~/.oh-my-zsh ]; then
  sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
fi

# bakcup .zshrc to .zshrc_backup
if [ -f ~/.zshrc ]; then
  echo ".zshrc exists"
  if [ -f ~/.zshrc_backup ]; then
    echo "create .zshrc backup"
    rm ~/.zshrc_backup
  fi
  echo "mv file to backup"
  mv ~/.zshrc ~/.zshrc_backup
fi

# link zshrc
ln -s pwd/zshrc ~/.zshrc
