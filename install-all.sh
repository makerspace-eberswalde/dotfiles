# [RUN-SCRIPTS]
wget --no-cache -qO- https://raw.githubusercontent.com/makerspace-eberswalde/dotfiles/master/install-cli.sh | bash &&
	cd ~/.dotfiles &&
	sh install-gui.sh &&
	sh install-system.sh &&

	# [MESSAGE]
echo "INSTALL SUCCESSFULL!"
