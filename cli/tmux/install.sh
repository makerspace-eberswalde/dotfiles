# INSTALL HELPER FOR DIFFERENT TMUX-NEXT VERSIONs
echo "\nINSTALL TMUX: tmux-next START"
echo "=============================\n"
MACHINE_TYPE=`uname -m`
if [ ${MACHINE_TYPE} = 'x86_64' ]; then
  # 64-bit stuff here
  UBUNTU_VERSION=`lsb_release -rs`
  if [ $UBUNTU_VERSION = "12.04" ]; then
    wget -O tmux-next-ubuntu.deb https://raw.githubusercontent.com/makerspace-eberswalde/installer/master/tmux/ubuntu-12.04/tmux-next_2.3~20170426~bzr3814+20-1ubuntu1~ppa0~ubuntu12.04.1_amd64.deb
  elif [ $UBUNTU_VERSION = "14.04" ]; then
    wget -O tmux-next-ubuntu.deb https://raw.githubusercontent.com/makerspace-eberswalde/installer/master/tmux/ubuntu-14.04/tmux-next_2.3~20170426~bzr3814+20-1ubuntu1~ppa0~ubuntu14.04.1_amd64.deb
  elif [ $UBUNTU_VERSION = "15.04" ]; then
    wget -O tmux-next-ubuntu.deb https://raw.githubusercontent.com/makerspace-eberswalde/installer/master/tmux/ubuntu-15.04/tmux-next_2.3~20170426~bzr3814+20-1ubuntu1~ppa0~ubuntu15.04.1_amd64.deb
  elif [ $UBUNTU_VERSION = "15.10" ]; then
    wget -O tmux-next-ubuntu.deb https://raw.githubusercontent.com/makerspace-eberswalde/installer/master/tmux/ubuntu-15.10/tmux-next_2.3~20161212~bzr3632+20-1ubuntu1~ppa0~ubuntu15.10.1_amd64.deb
  elif [ $UBUNTU_VERSION = "16.04" ]; then
    wget -O tmux-next-ubuntu.deb https://raw.githubusercontent.com/makerspace-eberswalde/installer/master/tmux/ubuntu-16.04/tmux-next_2.3~20170426~bzr3814+20-1ubuntu1~ppa0~ubuntu16.04.1_amd64.deb
  fi
else
  # 32-bit stuff here
  echo 32-bit
  if [ $UBUNTU_VERSION = "12.04" ]; then
    wget -O tmux-next-ubuntu.deb https://raw.githubusercontent.com/makerspace-eberswalde/installer/master/tmux/ubuntu-12.04/tmux-next_2.3~20170426~bzr3814+20-1ubuntu1~ppa0~ubuntu12.04.1_i386.deb
  elif [ $UBUNTU_VERSION = "14.04" ]; then
    wget -O tmux-next-ubuntu.deb https://raw.githubusercontent.com/makerspace-eberswalde/installer/master/tmux/ubuntu-14.04/tmux-next_2.3~20170426~bzr3814+20-1ubuntu1~ppa0~ubuntu14.04.1_i386.deb
  elif [ $UBUNTU_VERSION = "15.04" ]; then
    wget -O tmux-next-ubuntu.deb https://raw.githubusercontent.com/makerspace-eberswalde/installer/master/tmux/ubuntu-15.04/tmux-next_2.3~20170426~bzr3814+20-1ubuntu1~ppa0~ubuntu15.04.1_i386.deb
  elif [ $UBUNTU_VERSION = "15.10" ]; then
    wget -O tmux-next-ubuntu.deb https://raw.githubusercontent.com/makerspace-eberswalde/installer/master/tmux/ubuntu-15.10/tmux-next_2.3~20161212~bzr3632+20-1ubuntu1~ppa0~ubuntu15.10.1_i386.deb
  elif [ $UBUNTU_VERSION = "16.04" ]; then
    wget -O tmux-next-ubuntu.deb https://raw.githubusercontent.com/makerspace-eberswalde/installer/master/tmux/ubuntu-16.04/tmux-next_2.3~20170426~bzr3814+20-1ubuntu1~ppa0~ubuntu16.04.1_i386.deb
  fi
fi
if [ -f "tmux-next-ubuntu.deb" ]; then
  sudo dpkg -i tmux-next-ubuntu.deb &&
  rm tmux-next-ubuntu.deb &&
fi
sudo rm -f /usr/bin/tmux
sudo ln -s /usr/bin/tmux-next /usr/bin/tmux &&
# vi-copy issue: https://github.com/tmux/tmux/issues/592

# link tmux.conf_setup
echo "\nTMUX: tmux.conf_setup"
echo "---------------------\n"
rm -f ~/.tmux.conf_setup &&
FILE_CONFIG_SETUP=`pwd`/tmux.conf_setup &&
ln -s $FILE_CONFIG_SETUP ~/.tmux.conf_setup &&

# cp tmux.conf which sources tmux.conf_setup
# write your own aliases here
echo "\nTMUX: tmux.conf"
echo "---------------\n"
rm -f ~/.tmux.conf &&
FILE_CONF=`pwd`/tmux.conf &&
cp $FILE_CONF ~/.tmux.conf &&

# TMUXINATOR: https://github.com/tmuxinator/tmuxinator
# https://www.cyberciti.biz/faq/debian-ubuntu-install-gem-the-frontend-to-rubygems/
echo "\nTMUXINATOR"
echo "----------\n"
sudo apt-get install -y ruby &&
sudo apt-get install -y gem &&
sudo gem install tmuxinator &&
echo "\nTMUXINATOR: tmuxinator.zsh"
echo "--------------------------\n"
mkdir ~/.bin &&
wget -P ~/.bin https://github.com/tmuxinator/tmuxinator/blob/master/completion/tmuxinator.zsh &&
mkdir ~/.tmuxinator && 
echo "\nTMUXINATOR: link .tmuxinator/backup"
echo "-----------------------------------\n"
rm -rf ~/.tmuxinator/backup &&
mkdir ~/.tmuxinator/backup &&
mv ~/.tmuxinator/*.yml ~/.tmuxinator/backup &&
echo "\nTMUXINATOR: link .tmuxinator"
echo "----------------------------\n"
ln -s ~/.dotfiles/cli/tmux/tmuxinator/* ~/.tmuxinator &&
echo "\nINSTALL TMUX: tmux-next DONE"
echo "============================\n"
