echo "\nINSTALL INKSCAPE START"
echo "===================================\n"
sudo add-apt-repository ppa:inkscape.dev/stable -y &&
  sudo apt-get update &&
  sudo apt-get install -y inkscape &&
  cd ~/.dotfiles/gui/inkscape &&
  sh configure.sh

echo "\nINSTALL INKSCAPE DONE"
echo "===================================\n"
