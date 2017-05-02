echo "\nINSTALL OPENRA START"
echo "===================================\n"
# https://wiki.ubuntuusers.de/Spiele/OpenRA/
#wget https://raw.githubusercontent.com/makerspace-eberswalde/installer/master/openra/openra_release.20170421_all.deb &&
  #yes | sudo apt-get install openra

# https://wiki.ubuntuusers.de/GetDeb/
sudo add-apt-repository 'deb http://archive.getdeb.net/ubuntu xenial-getdeb apps games' &&
  wget -q http://archive.getdeb.net/getdeb-archive.key -O- | sudo apt-key add - &&
  sudo apt-get update &&
  yes | sudo apt-get install libSDL2 &&
  sudo apt-get install -y openra
echo "\nINSTALL OPENRA DONE"
echo "===================================\n"
