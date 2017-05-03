# [MESSAGE]
echo "START FIXES INSTALLATION" &&
	echo "======================================================" &&

git pull &&
  cd ~/.dotfiles/scripts/fixes &&
  sh ./zshrc-fix.sh &&
  cd ~/.dotfiles &&
  sh ./install-gui.sh &&
  sh ./install-system.sh

# [MESSAGE]
echo "DONE FIXES INSTALLATION" &&
	echo "======================================================" &&
