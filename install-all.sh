# [RUN-SCRIPTS]
sh install-cli.sh norestart &&
sh install-gui.sh norestart &&

# [RESTART]
while true; do
    read -p "\nEinige Programme benötigen einen Neustart um zu funktionieren!\n\nWollen Sie den Rechner jetzt neu starten? [Jj|Nn]" yn
    case $yn in
        [Jj]* ) echo "yes"; sudo shutdown -r now;;
        [Nn]* ) echo "no"; break;;
        * ) echo "Bitte antworten Sie mit j/n.";;
    esac
done
