echo "\n CONFIGURE INKSCAPE START"
echo "===================================\n"
# http://wiki.inkscape.org/wiki/index.php/Installing_fonts

sudo /bin/cp -f ~/.dotfiles/gui/inkscape/default.de.svg /usr/share/inkscape/templates/default.de.svg &&
  sudo /bin/cp -f ~/.dotfiles/gui/inkscape/fonts/*.ttf /usr/share/fonts/truetype &&
  sudo rm -f /usr/share/fonts/*fonts.cache-1 &&
  rm -f ~/*fonts.cache-1 &&
  cd /usr/share/fonts &&
  fc-cache

echo "\n CONFIGURE INKSCAPE DONE"
echo "===================================\n"
