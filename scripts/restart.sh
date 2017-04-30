# [QUESTION] RESTART
# - asks for restart when no parameter is given via the caller of the script
# - does not aks for restart when "norestart" is passed as first parameter via
#   the caller of the script
if [ -n "$1" ]; then
	if [ "$1" = "norestart" ]; then 
		echo "no restart" 
	fi;
else
	while true; do
		read -p "Einige Programme benötigen einen Neustart um zu funktionieren! Wollen Sie den Rechner jetzt neu starten? [Jj|Nn]" yn
		case $yn in
			[Jj]* ) echo "yes"; sudo shutdown -r now;;
			[Nn]* ) echo "no"; break;;
			* ) echo "Bitte antworten Sie mit j/n.";;
		esac
	done
fi
