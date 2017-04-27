echo "\nINSTALL VIM"
echo "===================================\n"

# INSTALL VIM
sudo apt-get install -y vim

# PATHOGEN
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# link vimrc
rm -f ~/.vimrc 2>/dev/null
FILE_RC=`pwd`/vimrc
ln -s $FILE_RC ~/.vimrc

# link vimrc_setup
rm -f ~/.vimrc_setup 2>/dev/null
FILE_RC_SETUP=`pwd`/vimrc_setup
ln -s $FILE_RC_SETUP ~/.vimrc_setup

# link vimrc_mappings
rm -f ~/.vimrc_mappings 2>/dev/null
FILE_RC_MAPPINGS=`pwd`/vimrc_mappings
ln -s $FILE_RC_MAPPINGS ~/.vimrc_mappings

# link vimrc_plugins
rm -f ~/.vimrc_plugins 2>/dev/null
FILE_RC_PLUGINS=`pwd`/vimrc_plugins
ln -s $FILE_RC_PLUGINS ~/.vimrc_plugins

# PLUGINS
rm -rf ~/.vim/bundle/nerdtree
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
rm -rf ~/.vim/bundle/vim-tmux-navigator
git clone https://github.com/christoomey/vim-tmux-navigator ~/.vim/bundle/vim-tmux-navigator
rm -rf ~/.vim/bundle/vim-colors-solarized
git clone https://github.com/altercation/vim-colors-solarized ~/.vim/bundle/vim-colors-solarized
rm -rf ~/.vim/bundle/vim-nerdtree-syntax-highlight
# FONTS FOR NERDTREE ICONS
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20for%20Powerline%20Nerd%20Font%20Complete.otf
git clone https://github.com/tiagofumo/vim-nerdtree-syntax-highlight ~/.vim/bundle/vim-nerdtree-syntax-highlight
rm -rf ~/.vim/bundle/vim-devicons
git clone https://github.com/ryanoasis/vim-devicons ~/.vim/bundle/vim-devicons
