# https://askubuntu.com/questions/541449/how-do-i-always-show-menu-items-in-unity/541454
gsettings set com.canonical.Unity always-show-menus true

# https://askubuntu.com/questions/153597/editing-gsettings-add-icon-to-launcher-by-command?noredirect=1&lq=1
ln -s ~/.dotfiles/gui/unity/launcher_append_item.py ~/.launcher_append_item.py
python ~/.launcher_append_item.py gnome-terminal.desktop 0
