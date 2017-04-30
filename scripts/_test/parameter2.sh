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
