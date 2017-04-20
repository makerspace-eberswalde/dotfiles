# install tmux from source for older linux versions: https://ubuntuincident.wordpress.com/2016/03/17/upgrade-tmux-to-the-latest-version/
# tmux_install.sh https://gist.github.com/P7h/91e14096374075f5316e
sudo apt-get install tmux-next
sudo rm -f /usr/bin/tmux
sudo ln -s /usr/bin/tmux-next /usr/bin/tmux

# vi-copy issue: https://github.com/tmux/tmux/issues/592

# link tmux.conf_setup
rm -f ~/.tmux.conf_setup 2>/dev/null
FILE_CONFIG_SETUP=`pwd`/tmux.conf_setup
ln -s $FILE_CONFIG_SETUP ~/.tmux.conf_setup

# cp tmux.conf which sources tmux.conf_setup
# write your own aliases here
rm -f ~/.tmux.conf 2>/dev/null
FILE_CONF=`pwd`/tmux.conf
cp $FILE_CONF ~/.tmux.conf

# TMUXINATOR: https://github.com/tmuxinator/tmuxinator
# https://www.cyberciti.biz/faq/debian-ubuntu-install-gem-the-frontend-to-rubygems/
sudo apt-get install ruby gem
sudo gem install tmuxinator
