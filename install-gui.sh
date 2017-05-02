# [INSTALL] oneliner
sudo apt-get install update &&
  sudo apt-get install -y vlc &&

  # [INSTALL] google-chrome
cd ~/.dotfiles/gui/google-chrome &&
  sh install.sh &&

  # [INSTALL] inkscape
cd ~/.dotfiles/gui/inkscape &&
  sh install.sh &&

  # [INSTALL] blender
#cd ~/.dotfiles/gui/blender &&
  #sh install.sh &&

  # [INSTALL] system-load-indicator
cd ~/.dotfiles/gui/system-load-indicator &&
  sh install.sh &&

  # [INSTALL] freemind
cd ~/.dotfiles/gui/freemind &&
  sh install.sh &&

  # [INSTALL] virtualbox
cd ~/.dotfiles/gui/virtualbox &&
  sh install.sh &&

  # [INSTALL] unity
cd ~/.dotfiles/gui/unity &&
  sh install.sh &&

  # [INSTALL] dropbox
cd ~/.dotfiles/gui/dropbox &&
  sh install.sh &&

  # [MESSAGE]
echo "GUI Installation successful!"
