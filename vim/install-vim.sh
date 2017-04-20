sudo apt-get install vim
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim


# link 
rm -f ~/.vimrc 2>/dev/null
FILE_RC=`pwd`/vimrc
ln -s $FILE_RC ~/.vimrc

# link 
rm -f ~/.vimrc_setup 2>/dev/null
FILE_RC_SETUP=`pwd`/vimrc_setup
ln -s $FILE_RC_SETUP ~/.vimrc_setup
