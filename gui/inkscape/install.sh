echo "\nINSTALL INKSCAPE START"
echo "===================================\n"
sudo add-apt-repository ppa:inkscape.dev/stable &&
  sudo apt-get update &&
  sudo apt-get install -y inkscape &&
  sudo /bin/cp -f ~/.dotfiles/gui/inkscape/default.de.svg /usr/share/inkscape/templates/default.de.svg &&
  sudo /bin/cp -f ~/.dotfiles/gui/inkscape/fonts/*.ttf /usr/share/fonts/truetype
echo "\nINSTALL INKSCAPE DONE"
echo "===================================\n"
