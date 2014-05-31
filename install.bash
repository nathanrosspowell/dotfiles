#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Install all needed software.
packageList=(
    curl
    ttf-inconsolata
)
sudo apt-get install ${packagelist[@]}
sudo apt-get autoremove
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Symbolic link for bashrc.
Symbolic links for vim
currentDir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
if [ -f ~/.bashrc ];
then
    rm ~/.bashrc
fi
ln -s currentDir/bashrc ~/.bashrc
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# git submodules.
git submodule init
git submodule update
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
