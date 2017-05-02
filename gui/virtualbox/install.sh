echo "\nINSTALL VIRTUALBOX START"
echo "===================================\n"
# https://askubuntu.com/questions/367248/how-to-install-virtualbox-from-command-line
echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections &&
  sudo apt-get install -y virtualbox &&
  sudo apt install -y virtualbox-ext-pack
echo "\nINSTALL VIRTUALBOX DONE"
echo "===================================\n"
