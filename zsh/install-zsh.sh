# install zsh
# sudo apt-get install zsh

# install oh-my-zsh: https://github.com/robbyrussell/oh-my-zsh
rm -rf ~/.oh-my-zsh
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

# mv .zshrc to backup if existing
mv ~/.zshrc ~/.zshrc_backup 2>/dev/null

# link zshrc
FILE=`pwd`/zshrc
echo "link ~/.zshrc to $FILE" 
ln -s $FILE ~/.zshrc
