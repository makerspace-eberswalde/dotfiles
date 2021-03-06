# [MESSAGE]
echo "START CLI INSTALLATION" &&
	echo "======================================================" &&

	# [INSTALL] oneliner
sudo apt-get update &> /dev/null &&
	sudo apt-get install -y curl &&
	#sudo apt-get install -y tee &&
	sudo apt-get install -y git &&
	sudo apt-get install -y wget &&
	sudo apt-get install -y htop &&
	sudo apt-get install -y build-essential &&
	sudo apt-get install -y subversion &&
	sudo apt-get install -y screen &&
	sudo apt-get install -y openssh-server &&
	sudo apt-get install -y gnome-panel &&
	#sudo apt-get install -y gnome-session-fallback &&
	sudo apt-get install -y firefox-locale-de &&
	sudo apt-get install -y thunderbird-locale-de &&
	sudo apt-get install -y libreoffice-l10n-de &&
	sudo apt-get install -y libreoffice-help-de &&
	sudo apt-get install -y flashplugin-installer &&
	#sudo apt-get install -y openjdk-6-jre &&
	sudo apt-get install -y nmap &&
  yes | sudo apt-get install wireshark &&
	yes | sudo apt-get install tshark &&
	sudo apt-get install -y tree &&
	sudo apt-get install -y iptraf &&

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

	# [INSTALL] tmux
cd ~/.dotfiles/cli/tmux &&
	sh install.sh &&

	# [INSTALL] zsh (depends on tmux)
cd ~/.dotfiles/cli/zsh &&
	sh install.sh &&
	sh configure.sh &&

	# [INSTALL] nodejs
cd ~/.dotfiles/cli/nodejs &&
	sh install.sh &&

	# [INSTALL] npm (depends on nodejs)
cd ~/.dotfiles/cli/npm &&
	sh install.sh &&

	# [INSTALL] vim
cd ~/.dotfiles/cli/vim &&
	sh install.sh &&

	# [INSTALL] java
cd ~/.dotfiles/cli/java &&
	sh install.sh &&

	# [CHSH]
sudo chsh -s /bin/zsh mkrspcebw &&

	# [MESSAGE]
echo "CLI Installation successful!" &&
	echo "======================================================"
