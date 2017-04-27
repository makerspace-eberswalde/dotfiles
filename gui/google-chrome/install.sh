echo "\nINSTALL GOOGLE-CHROME"
echo "===================================\n"
sudo apt-get install -y libxss1;
sudo apt-get install -y libappindicator1;
sudo apt-get install -y libindicator7;
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb;
sudo dpkg -i google-chrome*.deb;
rm -rf google-chrome*.deb;
