echo "\nINSTALL UNITY START"
echo "===================================\n"
# https://askubuntu.com/questions/541449/how-do-i-always-show-menu-items-in-unity/541454
gsettings set com.canonical.Unity always-show-menus true
# https://www.howtogeek.com/251616/how-to-move-the-unity-desktops-launcher-to-the-bottom-of-your-screen-on-ubuntu-16.04/
gsettings set com.canonical.Unity.Launcher launcher-position Bottom
# TODO automatic updates: https://www.garron.me/en/linux/turn-off-stop-ubuntu-automatic-update.html

# https://askubuntu.com/questions/153597/editing-gsettings-add-icon-to-launcher-by-command?noredirect=1&lq=1
# /usr/share/applications
# ~/.local/share/applications
# find pathes: https://ubuntuforums.org/showthread.php?t=1256494
ln -sf ~/.dotfiles/system/unity/launcher_append_item.py ~/.launcher_append_item.py &&
cp -f ~/.dotfiles/system/unity/desktop/* ~/.local/share/applications &&

sudo apt-get install -y python-dbus &&
python ~/.launcher_append_item.py gnome-terminal.desktop 0 &&
python ~/.launcher_append_item.py google-chrome.desktop 1 &&
python ~/.launcher_append_item.py firefox.desktop 2 &&
python ~/.launcher_append_item.py nautilus.desktop 3 &&
python ~/.launcher_append_item.py gedit.desktop 4 &&
python ~/.launcher_append_item.py gvim.desktop 5 &&
python ~/.launcher_append_item.py dropbox.desktop 6 &&
python ~/.launcher_append_item.py inkscape.desktop 7 &&
python ~/.launcher_append_item.py vlc.desktop 8 &&
python ~/.launcher_append_item.py virtualbox.desktop 9

echo "\nINSTALL UNITY DONE"
echo "===================================\n"
