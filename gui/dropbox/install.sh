# TODO: add architecture switch

echo "\nINSTALL DROPBOX START"
echo "===================================\n"
# [INSTALL-INSTRUCTIONS] https://www.dropbox.com/install 
# [INSTALL-INSTRUCTIONS] https://www.digitalocean.com/community/tutorials/how-to-install-dropbox-client-as-a-service-on-ubuntu-14-04 
#cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf - &&
#~/.dropbox-dist/dropboxd &&

# [VERSION2]
# [DOWNLOAD]: http://stackoverflow.com/questions/7106012/download-a-single-folder-or-directory-from-a-github-repo 
#svn checkout https://github.com/makerspace-eberswalde/installer/trunk/dropbox/dropbox &&
#mv dropbox ~/.dropbox
#svn checkout https://github.com/makerspace-eberswalde/installer/trunk/dropbox/dropbox-dist &&
#mv dropbox-dist ~/.dropbox-dist
#svn checkout https://github.com/makerspace-eberswalde/installer/trunk/dropbox/Dropbox &&
#mv Dropbox ~/Dropbox
#~/.dropbox-dist/dropboxd

# [VERSION3]: https://www.digitalocean.com/community/tutorials/how-to-install-dropbox-client-as-a-service-on-ubuntu-14-04
#cd ~ &&
curl -Lo dropbox-linux-x86_64.tar.gz https://www.dropbox.com/download?plat=lnx.x86_64 &&
sudo mkdir -p /opt/dropbox &&
sudo tar xzfv dropbox-linux-x86_64.tar.gz --strip 1 -C /opt/dropbox &&
# link to account
# Set Up Service Script
cd ~ &&
sudo curl -o /etc/init.d/dropbox https://gist.githubusercontent.com/thisismitch/d0133d91452585ae2adc/raw/699e7909bdae922201b8069fde3011bbf2062048/dropbox 2>/dev/null
echo "1"
sudo chmod +x /etc/init.d/dropbox 2>/dev/null
echo "2"
sudo rm /etc/default/dropbox
echo "3"
sudo touch /etc/default/dropbox
echo "4"
sudo echo "DROPBOX_USERS=\"mkrspcebw\"" >> /etc/default/dropbox
echo "5"
#sudo nano /etc/default/dropbox &&
sudo service dropbox start &&
echo "6"
sudo update-rc.d dropbox defaults 2>/dev/null &&
echo "7"
# run droxbox and link
/opt/dropbox/dropboxd &
echo "\n\nFirefox should start automatically to allow you Logging into your Dropbox Account!"
echo "\n\nThe script is waiting for 10 Seconds now to let that happen!"
wait 10
# Install Dropbox CLI
echo "\nINSTALL DROPBOX END"
echo "===================================\n"
