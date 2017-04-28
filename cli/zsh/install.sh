echo "\nINSTALL ZSH START"
echo "===================================\n"

# install zsh
echo "\nzsh apt-get install"
echo "---------------------\n"
sudo apt-get install -y zsh;

# install oh-my-zsh: https://github.com/robbyrussell/oh-my-zsh
echo "\noh-my-zsh"
echo "---------------------\n"
rm -rf ~/.oh-my-zsh;
git clone --depth=1 https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh;

# mv .zshrc to backup if existing
echo "\n.zshrc_backup"
echo "---------------------\n"
mv ~/.zshrc ~/.zshrc_backup 2>/dev/null;
rm -f ~/.zshrc_setup 2>/dev/null;

# link zshrc_setup which sources zshrc_oh-my-zsh
echo "\n.zshrc_setup"
echo "---------------------\n"
FILE_RC_SETUP=`pwd`/zshrc_setup;
ln -s $FILE_RC_SETUP ~/.zshrc_setup;

# link zshrc_setup which sources zshrc_oh-my-zsh
echo "\n.zshrc_functions"
echo "---------------------\n"
FILE_RC_FUNCTIONS=`pwd`/zshrc_functions;
ln -s $FILE_RC_FUNCTIONS ~/.zshrc_functions;

# cp zshrc which sources zshrc_setup
# write your own aliases here
echo "\n.zshrc"
echo "---------------------\n"
FILE_RC=`pwd`/zshrc;
cp -f $FILE_RC ~/.zshrc;

echo "\nINSTALL ZSH DONE"
echo "===================================\n"
