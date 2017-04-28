echo "\nINSTALL GOOGLE-CHROME START"
echo "===================================\n"
sudo apt-get install -y libxss1 &&
sudo apt-get install -y libappindicator1 &&
sudo apt-get install -y libindicator7 &&
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb &&
sudo dpkg -i google-chrome*.deb &&
sudo apt-get install -f &&
rm -rf google-chrome*.deb &&
echo "\nINSTALL GOOGLE-CHROME DONE"
echo "===================================\n"
