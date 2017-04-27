echo "\nINSTALL ZSH"
echo "===================================\n"

# install zsh
sudo apt-get install -y zsh;

# install oh-my-zsh: https://github.com/robbyrussell/oh-my-zsh
rm -rf ~/.oh-my-zsh;
git clone --depth=1 https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh;

# mv .zshrc to backup if existing
mv ~/.zshrc ~/.zshrc_backup 2>/dev/null
rm -f ~/.zshrc_setup 2>/dev/null

# link zshrc_setup which sources zshrc_oh-my-zsh
FILE_RC_SETUP=`pwd`/zshrc_setup
ln -s $FILE_RC_SETUP ~/.zshrc_setup

# cp zshrc which sources zshrc_setup
# write your own aliases here
FILE_RC=`pwd`/zshrc
cp -f $FILE_RC ~/.zshrc
