echo "\nINSTALL NODEJS"
echo "===================================\n"

# https://askubuntu.com/questions/594656/how-to-install-the-latest-versions-of-nodejs-and-npm-for-ubuntu-14-04-lts
#echo "------------------------------------ CURL -------------------------------"
#curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -
#curl -o install-node-deb.sh https://deb.nodesource.com/setup_7.x;
#ls -lisa;
#echo "------------------------------------ install sh -------------------------------"
#sudo sh install-node-deb.sh;
#rm install-node-deb.sh;
#echo "------------------------------------ apt-get -------------------------------"
#sudo apt-get install -y nodejs;
#sudo apt-get install -f;

# node: http://askubuntu.com/questions/404929/node-command-not-found
sudo apt-get --yes --force-yes install nodejs
sudo apt-get --yes --force-yes install npm
sudo ln -s /usr/bin/nodejs /usr/bin/node
# fix npm permission problem: https://docs.npmjs.com/getting-started/fixing-npm-permissions
# npm confi get prefix
sudo chown -R `whoami` /usr/local
npm install n -g
n 7.9.0
echo "\nINSTALL NODEJS DONE"
echo "===================================\n"
