echo "\nINSTALL JAVA START"
echo "===================================\n"
# http://www.webupd8.org/2012/09/install-oracle-java-8-in-ubuntu-via-ppa.html
sudo add-apt-repository ppa:webupd8team/java &&
  sudo apt-get update &&
  sudo apt-get install oracle-java8-installer
echo "\nINSTALL JAVA DONE"
echo "===================================\n"
