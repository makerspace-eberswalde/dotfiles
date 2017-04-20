# install tmux from source for older linux versions: https://ubuntuincident.wordpress.com/2016/03/17/upgrade-tmux-to-the-latest-version/
# https://gist.github.com/P7h/91e14096374075f5316e
#sudo apt-get update -yqqu
sudo add-apt-repository -yu ppa:pi-rho/dev
sudo apt-get update -yqqu
sudo apt-get install -yqqu python-software-properties software-properties-common
#sudo apt-get install -yqq tmux-next=2.3~20160913~bzr3547+20-1ubuntu1~ppa0~ubuntu16.04.1
# sudo apt-get install -yqq tmux-next=2.3~20160913~bzr3547+20-1ubuntu1~ppa0~ubuntu15.10.1
# sudo apt-get install -yqq tmux-next=2.3~20160913~bzr3547+20-1ubuntu1~ppa0~ubuntu15.04.1
 sudo apt-get install -yqq tmux-next=2.3~20160913~bzr3547+20-1ubuntu1~ppa0~ubuntu14.04.1
# sudo apt-get install -yqq tmux-next=2.3~20160913~bzr3547+20-1ubuntu1~ppa0~ubuntu12.04.1
tmux-next -V

# link tmux.conf_setup
rm -f ~/.tmux.conf_setup 2>/dev/null
FILE_CONFIG_SETUP=`pwd`/tmux.conf_setup
ln -s $FILE_CONFIG_SETUP ~/.tmux.conf_setup

# cp tmux.conf which sources tmux.conf_setup
# write your own aliases here
rm -f ~/.tmux.conf 2>/dev/null
FILE_CONF=`pwd`/tmux.conf
cp $FILE_CONF ~/.tmux.conf
