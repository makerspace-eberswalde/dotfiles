# install tmux
sudo apt-get install tmux

# link tmux.conf_setup
rm -f ~/.tmux.conf_setup 2>/dev/null
FILE_CONFIG_SETUP=`pwd`/tmux.conf_setup
ln -s $FILE_CONFIG_SETUP ~/.tmux.conf_setup

# cp tmux.conf which sources tmux.conf_setup
# write your own aliases here
rm -f ~/.tmux.conf 2>/dev/null
FILE_CONF=`pwd`/tmux.conf
cp $FILE_CONF ~/.tmux.conf
