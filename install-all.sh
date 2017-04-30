# [RUN-SCRIPTS]
INSTALL-CLI="`wget --no-cache -qO- https://raw.githubusercontent.com/makerspace-eberswalde/dotfiles/master/install-cli.sh`" &&
	eval $INSTALL_CLI &&
	INSTALL-GUI="`wget --no-cache -qO- https://raw.githubusercontent.com/makerspace-eberswalde/dotfiles/master/install-gui.sh`" &&
	eval $INSTALL_GUI &&

	# [MESSAGE]
echo "INSTALL SUCCESSFULL!"

# [RESTART]
cd ~/.dotfiles &&
	sh scripts/restart.sh
