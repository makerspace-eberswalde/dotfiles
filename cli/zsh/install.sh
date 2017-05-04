echo "\nINSTALL ZSH START"
echo "===================================\n"

# install zsh
echo "\nzsh apt-get install"
echo "---------------------\n"
sudo apt-get install -y zsh &&

# install oh-my-zsh: https://github.com/robbyrussell/oh-my-zsh
echo "\noh-my-zsh"
echo "---------------------\n"
rm -rf ~/.oh-my-zsh &&
git clone --depth=1 https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh &&


# compinit insecure functions problem: http://stackoverflow.com/questions/13762280/zsh-compinit-insecure-directories 
cd /usr/local/share/zsh &&
sudo chmod -R 755 ./site-functions &&

echo "\nINSTALL ZSH DONE"
echo "===================================\n"
