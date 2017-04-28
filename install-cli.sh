# [MKDIR]
mkdir -p ~/code/test &&
mkdir -p ~/.bin &&

# [CHOWN]
sudo chown -R $USER ~/.bin &&

# [CLONE] dotfiles
rm -rf ~/.dotfiles &&
git clone --depth=1 https://github.com/makerspace-eberswalde/dotfiles.git ~/.dotfiles &&

# [INSTALL] git
cd ~/.dotfiles/cli/git &&
sh install.sh && 
# [INSTALL] oneliner
sudo apt-get update &&
sudo apt-get install -y curl &&
sudo apt-get install -y wget &&
sudo apt-get install -y htop &&
sudo apt-get install -y build-essential &&
sudo apt-get install -y subversion &&

# [INSTALL] tmux
cd ~/.dotfiles/cli/tmux &&
sh install.sh &&

# [INSTALL] zsh (depends on tmux)
cd ~/.dotfiles/cli/zsh &&
sh install.sh &&

# [INSTALL] nodejs
cd ~/.dotfiles/cli/nodejs &&
sh install.sh &&

# [INSTALL] npm (depends on nodejs)
cd ~/.dotfiles/cli/npm &&
sh install.sh &&

# [INSTALL] vim
cd ~/.dotfiles/cli/vim &&
sh install.sh &&

# [CHSH]
sudo chsh -s /bin/zsh mkrspcebw &&

# [MESSAGE]
echo "CLI Installation successful!"

# [RESTART]
if [ -n "$1" ]; then
	if [ "$1" = "norestart" ]; then 
    		echo "no restart" 
	fi;
else

		while true; do
    			read -p "\nEinige Programme benötigen einen Neustart um zu funktionieren!\n\nWollen Sie den Rechner jetzt neu starten? [Jj|Nn]" yn
    			case $yn in
        			[Jj]* ) echo "yes"; sudo shutdown -r now;;
        			[Nn]* ) echo "no"; break;;
        			* ) echo "Bitte antworten Sie mit j/n.";;
    			esac
		done
fi
