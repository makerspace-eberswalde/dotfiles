# [MESSAGE]
echo "\nSTART ZSH CONFIGURATION"
echo "================================================================================"

# mv .zshrc to backup if existing
echo "\n.zshrc_backup"
echo "---------------------\n"
mv ~/.zshrc ~/.zshrc_backup &&
rm -f ~/.zshrc_setup &&

# link zshrc_setup which sources zshrc_oh-my-zsh
echo "\n.zshrc_setup"
echo "---------------------\n"
FILE_RC_SETUP=`pwd`/zshrc_setup &&
ln -sf $FILE_RC_SETUP ~/.zshrc_setup &&

# link zshrc_setup which sources zshrc_oh-my-zsh
echo "\n.zshrc_functions"
echo "---------------------\n"
FILE_RC_FUNCTIONS=`pwd`/zshrc_functions &&
ln -sf $FILE_RC_FUNCTIONS ~/.zshrc_functions &&

# link zshrc_setup which sources zshrc_oh-my-zsh
echo "\n.zshrc_aliases"
echo "---------------------\n"
FILE_RC_ALIASES=`pwd`/zshrc_aliases &&
ln -sf $FILE_RC_ALIASES ~/.zshrc_aliases &&

# cp zshrc which sources zshrc_setup
# write your own aliases here
echo "\n.zshrc"
echo "---------------------\n"
FILE_RC=`pwd`/zshrc &&
cp -f $FILE_RC ~/.zshrc &&

# [MESSAGE]
echo "\nDONE ZSH CONFIGURATION"
echo "================================================================================"
