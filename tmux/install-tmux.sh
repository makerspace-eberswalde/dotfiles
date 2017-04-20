# install tmux
sudo apt-get install tmux

# link tmux.conf
rm -f ~/.gitconfig-setup 2>/dev/null
FILE_CONFIG_SETUP=`pwd`/gitconfig-setup
ln -s $FILE_CONFIG_SETUP ~/.gitconfig-setup
