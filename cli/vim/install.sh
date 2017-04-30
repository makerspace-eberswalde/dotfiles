# [MESSAGE]
echo "\nINSTALL VIM START"
&& echo "===================================\n"

# [INSTALL] VIM
&& sudo apt-get install --yes --force-yes vim-gnome

# [VIM-AUTOLOAD] PATHOGEN
&& mkdir -p ~/.vim/autoload ~/.vim/bundle
&& curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# [LINK] vimrc
&& rm -f ~/.vimrc
&& FILE_RC=`pwd`/vimrc
&& ln -s $FILE_RC ~/.vimrc

# [LINK] link vimrc_setup
&& rm -f ~/.vimrc_setup
&& FILE_RC_SETUP=`pwd`/vimrc_setup
&& ln -s $FILE_RC_SETUP ~/.vimrc_setup

# [LINK] link vimrc_mappings
&& rm -f ~/.vimrc_mappings
&& FILE_RC_MAPPINGS=`pwd`/vimrc_mappings
&& ln -s $FILE_RC_MAPPINGS ~/.vimrc_mappings

# [LINK] link vimrc_plugins
&& rm -f ~/.vimrc_plugins
&& FILE_RC_PLUGINS=`pwd`/vimrc_plugins
&& ln -s $FILE_RC_PLUGINS ~/.vimrc_plugins

# PLUGINS
# =============================================================================
# [VIM-PLUGIN] nerdtree
&& rm -rf ~/.vim/bundle/nerdtree
&& git clone --depth=1 https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
# [VIM-PLUGIN] nerdcommenter
&& rm -rf ~/.vim/bundle/nerdcommenter
&& git clone --depth=1 https://github.com/scrooloose/nerdcommenter.git ~/.vim/bundle/nerdcommenter
# [VIM-PLUGIN] vim-tmux-navigator
&& rm -rf ~/.vim/bundle/vim-tmux-navigator
&& git clone --depth=1 https://github.com/christoomey/vim-tmux-navigator ~/.vim/bundle/vim-tmux-navigator
# [VIM-PLUGIN] vim-colors-solarized
&& rm -rf ~/.vim/bundle/vim-colors-solarized
&& git clone --depth=1 https://github.com/altercation/vim-colors-solarized ~/.vim/bundle/vim-colors-solarized
# [VIM-PLUGIN] vim-nerdtree-syntax-highlight
&& rm -rf ~/.vim/bundle/vim-nerdtree-syntax-highlight
&& git clone --depth=1 https://github.com/tiagofumo/vim-nerdtree-syntax-highlight ~/.vim/bundle/vim-nerdtree-syntax-highlight
# [VIM-PLUGIN] vim-devicons
&& rm -rf ~/.vim/bundle/vim-devicons
&& git clone --depth=1 https://github.com/ryanoasis/vim-devicons ~/.vim/bundle/vim-devicons
# [VIM-PLUGIN] ctrlp
&& rm -rf ~/.vim/bundle/ctrlp
&& git clone --depth=1 https://github.com/ctrlpvim/ctrlp.vim.git ~/.vim/bundle/ctrlp
# [VIM-PLUGIN] surround
&& rm -rf ~/.vim/bundle/vim-surround
&& git clone --depth=1 https://github.com/tpope/vim-surround.git ~/.vim/bundle/vim-surround
# [VIM-PLUGIN] SNIPPETS
&& rm -rf ~/.vim/bundle/tlib-vim
&& git clone --depth=1 https://github.com/tomtom/tlib_vim.git ~/.vim/bundle/tlib-vim
&& rm -rf ~/.vim/bundle/vim-addon-mw-utils.git
&& git clone --depth=1 https://github.com/MarcWeber/vim-addon-mw-utils.git ~/.vim/bundle/vim-addon-mw-utils.git
&& rm -rf ~/.vim/bundle/vim-snipmate.git
&& git clone --depth=1 https://github.com/garbas/vim-snipmate.git ~/.vim/bundle/vim-snipmate.git
&& rm -rf ~/.vim/bundle/vim-snippets.git
&& git clone --depth=1 https://github.com/honza/vim-snippets.git ~/.vim/bundle/vim-snippets.git
# [VIM-PLUGIN] Autoformat
&& rm -rf ~/.vim/bundle/vim-autoformat.git
&& git clone --depth=1 https://github.com/Chiel92/vim-autoformat.git ~/.vim/bundle/vim-autoformat

# FONTS
# =============================================================================
# FOR NERDTREE ICONS
&& mkdir -p ~/.local/share/fonts
&& cd ~/.local/share/fonts
&& curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20for%20Powerline%20Nerd%20Font%20Complete.otf

# [MESSAGE]
&& echo "\nINSTALL VIM DONE"
&& echo "===================================\n"
