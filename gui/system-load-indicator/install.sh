echo "\nINSTALL SYSTEM LOAD INDICATOR START"
echo "===================================\n"
# http://www.webupd8.org/2011/05/network-memory-and-cpu-usage-indicator.html
sudo add-apt-repository ppa:indicator-multiload/stable-daily &&
  sudo apt-get update &&
  sudo apt-get install indicator-multiload &&
sudo /bin/cp -f ~/.dotfiles/gui/inkscape/default.de.svg /usr/share/inkscape/templates/default.de.svg
echo "\nINSTALL SYSTEM LOAD INDICATOR DONE"
echo "===================================\n"
