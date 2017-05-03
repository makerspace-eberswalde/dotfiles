echo "\nINSTALL VIRTUALBOX START"
echo "===================================\n"
# https://askubuntu.com/questions/367248/how-to-install-virtualbox-from-command-line
# https://askubuntu.com/questions/239892/how-to-install-virtualbox
# https://askubuntu.com/questions/308237/apt-get-force-yes-how-to-suppress-further-questions
echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections &&
  yes | sudo apt-get install virtualbox &&
  yes | sudo apt-get install virtualbox-ext-pack &&
  sudo adduser $USER vboxusers
echo "\nINSTALL VIRTUALBOX DONE"
echo "===================================\n"
