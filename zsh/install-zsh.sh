# install zsh
sudo apt-get install zsh

# install oh-my-zsh: https://github.com/robbyrussell/oh-my-zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

# bakcup .zshrc to .zshrc_backup
mv ~/.zshrc ~/.zshrc_backup

# link zshrc
ln -s zshrc ~/.zshrc
