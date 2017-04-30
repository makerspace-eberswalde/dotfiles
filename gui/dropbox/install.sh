# TODO: add architecture switch
echo "\nINSTALL DROPBOX START"
echo "===================================\n"

# [VERSION3]: https://www.digitalocean.com/community/tutorials/how-to-install-dropbox-client-as-a-service-on-ubuntu-14-04
#cd ~ &&
	curl -Lo dropbox-linux-x86_64.tar.gz https://www.dropbox.com/download?plat=lnx.x86_64 &&
	sudo mkdir -p /opt/dropbox &&
	sudo tar xzfv dropbox-linux-x86_64.tar.gz --strip 1 -C /opt/dropbox &&
	rm -rf dropbox-linux-x86_64.tar.gz &&
	cd ~ &&
	sudo curl -o /etc/init.d/dropbox https://gist.githubusercontent.com/thisismitch/d0133d91452585ae2adc/raw/699e7909bdae922201b8069fde3011bbf2062048/dropbox &&
	sudo chmod +x /etc/init.d/dropbox &&
	sudo rm /etc/default/dropbox &&
	sudo touch /etc/default/dropbox &&
	echo "DROPBOX_USERS=\"mkrspcebw\"" | sudo tee -a /etc/default/dropbox &&
	echo "start service"
sudo service dropbox start &&
	echo $?
echo "update-rc.d"
sudo update-rc.d dropbox defaults &&
	# run droxbox and link
echo "/opt/drobox/droboxd"
/opt/dropbox/dropboxd
echo "========================================================================================\n"
echo "\n\nFirefox should start automatically to allow you Logging into your Dropbox Account!"
echo "The script is waiting for 10 Seconds now to let that happen!"
echo "========================================================================================\n"
wait 10
# Install Dropbox CLI
echo "\nINSTALL DROPBOX END"
echo "===================================\n"
