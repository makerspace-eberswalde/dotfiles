echo "\nINSTALL UNITY START"
echo "===================================\n"
# https://askubuntu.com/questions/541449/how-do-i-always-show-menu-items-in-unity/541454
gsettings set com.canonical.Unity always-show-menus true

# https://askubuntu.com/questions/153597/editing-gsettings-add-icon-to-launcher-by-command?noredirect=1&lq=1
# /usr/share/applications
# ~/.local/share/applications
# find pathes: https://ubuntuforums.org/showthread.php?t=1256494
ln -s ~/.dotfiles/gui/unity/launcher_append_item.py ~/.launcher_append_item.py &&
cp ~/.dotfiles/gui/unity/desktop/* ~/.local/share/applications &&

sudo apt-get install -y python-dbus &&
python ~/.launcher_append_item.py gnome-terminal.desktop 0 &&
python ~/.launcher_append_item.py google-chrome.desktop 1 &&
python ~/.launcher_append_item.py firefox.desktop 2 &&
python ~/.launcher_append_item.py nautilus.desktop 3 &&
python ~/.launcher_append_item.py gedit.desktop 4 &&
python ~/.launcher_append_item.py vim.desktop 5 &&
python ~/.launcher_append_item.py dropbox.desktop 6 &&
python ~/.launcher_append_item.py inkscape.desktop 7
echo "\nINSTALL UNITY DONE"
echo "===================================\n"
