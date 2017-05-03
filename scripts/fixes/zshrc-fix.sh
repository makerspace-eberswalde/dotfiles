# cp zshrc which sources zshrc_setup
# write your own aliases here
echo "\n.zshrc"
echo "---------------------\n"
FILE_RC=~/.dotfiles/cli/zsh/zshrc &&
cp -f $FILE_RC ~/.zshrc &&
