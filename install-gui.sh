# [INSTALL] google-chrome 
cd ~/.dotfiles/gui/google-chrome &&
sh install.sh &&

# [INSTALL] inkscape 
cd ~/.dotfiles/gui/inkscape &&
sh install.sh &&

# [INSTALL] blender 
cd ~/.dotfiles/gui/blender &&
sh install.sh &&

# [INSTALL] dropbox 
cd ~/.dotfiles/gui/dropbox &&
sh install.sh &&

# [MESSAGE]
echo "GUI Installation successful!"

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
