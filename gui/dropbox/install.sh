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
#curl -Lo dropbox-linux-x86_64.tar.gz https://www.dropbox.com/download?plat=lnx.x86_64 &&
#sudo mkdir -p /opt/dropbox &&
#sudo tar xzfv dropbox-linux-x86_64.tar.gz --strip 1 -C /opt/dropbox &&
# link to account
# Set Up Service Script
cd ~ &&
sudo curl -o /etc/init.d/dropbox https://gist.githubusercontent.com/thisismitch/d0133d91452585ae2adc/raw/699e7909bdae922201b8069fde3011bbf2062048/dropbox
sudo chmod +x /etc/init.d/dropbox &&
sudo rm /etc/default/dropbox
sudo touch /etc/default/dropbox
sudo echo "DROPBOX_USERS=\"mkrspcebw\"" >> /etc/default/dropbox
#sudo nano /etc/default/dropbox &&
sudo service dropbox start &&
sudo update-rc.d dropbox defaults &&
# run droxbox and link
/opt/dropbox/dropboxd
# Install Dropbox CLI





echo "\nINSTALL DROPBOX END"
echo "===================================\n"
