# git submodules.
git submodule init
git submodule update

# Install all software.
sudo apt-get install ttf-inconsolata exuberant-ctags python-setuptools curl
sudo easy_install pip
sudo pip install pyflakes

# Bashrc
rm ~/.bashrc
ln -s ~/dotfiles/bashrc ~/.bashrc

# Vimrc
rm ~/.vim
ln -s ~/dotfiles/vim ~/.vim
rm ~/.vimrc
ln -s ~/dotfiles/vim/vimrc ~/.vimrc
rm ~/.gvimrc
ln -s ~/dotfiles/vim/gvimrc ~/.gvimrc
ln -s ~/dotfiles/vim/autoload/pathogen/autoload/pathogen.vim ~/dotfiles/vim/autoload/pathogen.vim

mkdir ~/tmp

# Hub.
mkdir ~/bin
mkdir ~/bin/hub
curl http://defunkt.io/hub/standalone -sLo ~/bin/hub
chmod +x ~/bin/hub


