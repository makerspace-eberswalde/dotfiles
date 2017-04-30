# TODO: add architecture switch
echo "\nINSTALL DROPBOX START"
echo "===================================\n"

# [VERSION3]: https://www.digitalocean.com/community/tutorials/how-to-install-dropbox-client-as-a-service-on-ubuntu-14-04

cd ~ &&
	rm -rf dropbox-linux-x86_64.tar.gz &&
	echo "1"
curl -Lo dropbox-linux-x86_64.tar.gz https://www.dropbox.com/download?plat=lnx.x86_64 &&
	echo "2"
sudo mkdir -p /opt/dropbox &&
	echo "3"
sudo tar xzfv dropbox-linux-x86_64.tar.gz --strip 1 -C /opt/dropbox &&
	echo "4"
rm -rf dropbox-linux-x86_64.tar.gz &&
	echo "5"
cd ~ &&
	echo "6"
sudo curl -o /etc/init.d/dropbox https://gist.githubusercontent.com/thisismitch/d0133d91452585ae2adc/raw/699e7909bdae922201b8069fde3011bbf2062048/dropbox &&
	echo "7"
sudo chmod +x /etc/init.d/dropbox &&
	echo "8"
sudo rm -rf /etc/default/dropbox &&
	echo "9"
sudo touch /etc/default/dropbox &&
	echo "10"
sudo service dropbox start &&
	echo "11"
sudo update-rc.d dropbox defaults &&
	echo "12"
cd ~ &&
	echo "13"
curl -LO https://www.dropbox.com/download?dl=packages/dropbox.py &&
	echo "14"
sudo chmod +x ~/dropbox.py &&
	echo "15"
sudo ln -s /opt/dropbox ~/.dropbox-dist &&
	echo "16"
~/dropbox.py autostart y &&
	echo "17"
/opt/dropbox/dropboxd &


echo "========================================================================================\n"
echo "\n\nFirefox should start automatically to allow you Logging into your Dropbox Account!"
echo "The script is waiting for 10 Seconds now to let that happen!"
echo "========================================================================================\n"
wait 10
# Install Dropbox CLI
echo "\nINSTALL DROPBOX END"
echo "===================================\n"
