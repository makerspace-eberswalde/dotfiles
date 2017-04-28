echo "\nINSTALL GIT START"
echo "===================================\n"

# TODO: create backups
# TODO: source file for beeing able to have own things: http://stackoverflow.com/questions/1557183/is-it-possible-to-include-a-file-in-your-gitconfig

# link 
rm -f ~/.gitconfig 2>/dev/null;
FILE_CONFIG=`pwd`/gitconfig;
ln -s $FILE_CONFIG ~/.gitconfig;

# link 
rm -f ~/.gitconfig-setup;
FILE_CONFIG_SETUP=`pwd`/gitconfig-setup;
ln -s $FILE_CONFIG_SETUP ~/.gitconfig-setup;

# link 
rm -f ~/.gitignore;
FILE_IGNORE=`pwd`/gitignore;
ln -s $FILE_IGNORE ~/.gitignore;

echo "\nINSTALL GIT DONE"
echo "===================================\n"
