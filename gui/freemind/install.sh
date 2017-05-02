echo "\nINSTALL FREEMIND START"
echo "===================================\n"
# https://sourceforge.net/p/freemind/discussion/22102/thread/33f5ff09/
wget https://raw.githubusercontent.com/makerspace-eberswalde/installer/master/freemind/freemind-bin-max-1.0.1.zip &&
  sudo mkdir /usr/bin/freemind &&
  sudo unzip freemind-bin-max-1.0.1.zip -d /usr/bin/freemind/ &&
  sudo chmod +x /usr/bin/freemind/freemind.sh &&
  rm -rf freemind-bin-max-1.0.1.zip

echo "\nINSTALL FREEMIND END"
echo "===================================\n"
