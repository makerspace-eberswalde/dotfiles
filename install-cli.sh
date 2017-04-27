# [MKDIR]
mkdir -p ~/code/test;
mkdir -p ~/.bin;

# [CHOWN]
sudo chown -R $USER ~/.bin;

# [CLONE] dotfiles
rm -rf ~/.dotfiles;
git clone --depth=1 https://github.com/makerspace-eberswalde/dotfiles.git ~/.dotfiles;

# [INSTALL] git
cd ~/.dotfiles/cli/git;
sh install.sh;

# [INSTALL] oneliner
sudo apt-get install -y curl;
sudo apt-get install -y wget;
sudo apt-get install -y htop;

# [INSTALL] tmux
cd ~/.dotfiles/cli/tmux;
sh install.sh;

# [INSTALL] zsh (depends on tmux)
cd ~/.dotfiles/cli/zsh;
sh install.sh;

# [INSTALL] nodejs
cd ~/.dotfiles/cli/nodejs;
sh install.sh;

# [INSTALL] vim
cd ~/.dotfiles/cli/vim;
sh install.sh;

# [CHSH]
sudo chsh -s /bin/zsh mkrspcebw;

# restart
sudo shutdown -r now;
