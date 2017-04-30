while true; do
    read -p "Do you wish to install this program? [Jj|Nn]" yn
    case $yn in
        [Jj]* ) echo "yes"; break;;
        [Nn]* ) echo "no"; break;;
        * ) echo "Please answer yes or no.";;
    esac
done

# restart
while true; do
    read -p "\nEinige Programme benötigen einen Neustart um zu funktionieren!\n\nWollen Sie den Rechner jetzt neu starten? [Jj|Nn]" yn
    case $yn in
        [Jj]* ) echo "yes"; sudo shutdown -r now;;
        [Nn]* ) echo "no"; break;;
        * ) echo "Please answer yes or no.";;
    esac
done
echo "after"
