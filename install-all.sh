# INSTALL git
cd ~/.dotfiles/git
sh install-git.sh

# clone dotfiles
rm -rf ~/.dotfiles
git clone https://github.com/makerspace-eberswalde/dotfiles.git ~/.dotfiles

# create code folder
mkdir -p ~/code/test

# change owner of ~/.bin
mkdir -p ~/.bin
sudo chown -R $USER ~/.bin

# tmux
cd ~/.dotfiles/tmux
sh install-tmux.sh

#zsh (depends on tmux)
cd ~/.dotfiles/zsh
sh install-zsh.sh

# nodejs
cd ~/.dotfiles/nodejs
sh install-nodejs.sh

# vim
cd ~/.dotfiles/vim
sh install-vim.sh

