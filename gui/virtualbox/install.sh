echo "\nINSTALL VIRTUALBOX START"
echo "===================================\n"
# https://askubuntu.com/questions/367248/how-to-install-virtualbox-from-command-line
# https://askubuntu.com/questions/239892/how-to-install-virtualbox
echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections &&
  sudo apt-get install -yyy virtualbox &&
  sudo apt install -y virtualbox-ext-pack &&
  sudo adduser $USER vboxusers
echo "\nINSTALL VIRTUALBOX DONE"
echo "===================================\n"
