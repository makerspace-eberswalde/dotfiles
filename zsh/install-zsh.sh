# install zsh
sudo apt-get install zsh

# install oh-my-zsh: https://github.com/robbyrussell/oh-my-zsh
rm -rf ~/.oh-my-zsh
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

# mv .zshrc to backup if existing
mv ~/.zshrc ~/.zshrc_backup 2>/dev/null
rm -f ~/.zshrc_oh-my-zsh 2>/dev/null

# link oh-my-zsh 
FILE_RC_OH=`pwd`/zshrc_oh-my-zsh
ln -s $FILE_RC_OH ~/.zshrc_oh-my-zsh

# link zshrc_setup which sources zshrc_oh-my-zsh
FILE_RC_SETUP=`pwd`/zshrc_setup
ln -s $FILE_RC_SETUP ~/.zshrc_setup

# cp zshrc which sources zshrc_setup
# write your own aliases here
FILE_RC=`pwd`/zshrc
cp $FILE_RC ~/.zshrc
