# install tmux from source for older linux versions: https://ubuntuincident.wordpress.com/2016/03/17/upgrade-tmux-to-the-latest-version/
#sudo apt-get install tmux
sudo apt-get install exuberant-ctags cmake libevent-dev libncurses5-dev
cd /tmp
wget https://github.com/tmux/tmux/releases/download/2.3/tmux-2.3.tar.gz
tar -xzf tmux-2.3.tar.gz
cd tmux-2.3
.configure && make
sudo make install
rm -rf tmux*

# link tmux.conf_setup
rm -f ~/.tmux.conf_setup 2>/dev/null
FILE_CONFIG_SETUP=`pwd`/tmux.conf_setup
ln -s $FILE_CONFIG_SETUP ~/.tmux.conf_setup

# cp tmux.conf which sources tmux.conf_setup
# write your own aliases here
rm -f ~/.tmux.conf 2>/dev/null
FILE_CONF=`pwd`/tmux.conf
cp $FILE_CONF ~/.tmux.conf
