echo "\nINSTALL NODEJS"
echo "===================================\n"

# https://askubuntu.com/questions/594656/how-to-install-the-latest-versions-of-nodejs-and-npm-for-ubuntu-14-04-lts
curl -o install-node-deb.sh https://deb.nodesource.com/setup_7.x
ls -lisa
sudo sh install-node-deb.sh;
rm install-node-deb.sh
sudo apt-get install -y nodejs
