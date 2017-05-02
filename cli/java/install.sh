echo "\nINSTALL JAVA START"
echo "===================================\n"
# http://www.webupd8.org/2012/09/install-oracle-java-8-in-ubuntu-via-ppa.html
echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections &&
  sudo add-apt-repository ppa:webupd8team/java -y &&
  sudo apt-get update &&
  sudo apt-get install -y oracle-java8-installer
echo "\nINSTALL JAVA DONE"
echo "===================================\n"
