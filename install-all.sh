# [RUN-SCRIPTS]
INSTALL-CLI="`wget --no-cache -qO- https://raw.githubusercontent.com/makerspace-eberswalde/dotfiles/master/install-cli.sh`" &&
	sh $INSTALL_CLI &&
	INSTALL-GUI="`wget --no-cache -qO- https://raw.githubusercontent.com/makerspace-eberswalde/dotfiles/master/install-gui.sh`" &&
	sh $INSTALL_GUI &&

	# [MESSAGE]
echo "INSTALL SUCCESSFULL!"

# [RESTART]
cd ~/.dotfiles &&
	sh scripts/restart.sh
