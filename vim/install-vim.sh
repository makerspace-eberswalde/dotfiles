# INSTALL VIM
sudo apt-get install vim

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
git clone https://github.com/christoomey/vim-tmux-navigator ~/.vim/bundle/vim-tmux-navigator
