INSTALLATION
===

Things that should be a given:

    sudo apt-get install vim
    sudo apt-get install git

To install this git repro run:

    git clone git://github.com/nathanrosspowell/dotfiles.git

Where possible, Vim plugins are installed as git submodules. Check these out by running the commands:

    cd dotfiles
    git submodule init
    git submodule update

If you are using the .zip download, please extract the file `vim/submodules.zip` to get the submodule content.

The font Consolas is used when available on Windows and Inconsolata is used when available on Linux. Get it here:

    sudo apt-get install ttf-inconsolata

BASH
===

Create symlink:

    ln -s ~/dotfiles/bashrc ~/.bashrc

For gnome-terminal, here are the colour pallet settings:

    #3F3F3F3F3F3F:#CCCC93939393:#7F7F9F9F7F7F:#E3E3CECEABAB:#DFDFAFAF8F8F:#CCCC93939393:#8C8CD0D0D3D3:#DCDCDCDCCCCC:#3F3F3F3F3F3F:#CCCC93939393:#7F7F9F9F7F7F:#E3E3CECEABAB:#DFDFAFAF8F8F:#CCCC93939393:#8C8CD0D0D3D3:#DCDCDCDCCCCC

1. Make sure that your menu bar is showing. If it is not, right click on the terminal window and select “Show menubar”.
2. In the Edit menu, select “Profiles…”
3. Create a new profile with whatever name you like.
4. In your terminal, start the program “gconf-editor”.
5. Navigate to “/apps/gnome-terminal/profiles/” and then to whatever you called the profile. If it does not show up with name, it might be called something like “Profile0″. If the latter is the case for you, check the “visible_name” property, which should match your chosen name.
6. Double click on the “palette” property.
7. Remove the current contents, and paste the above color palette string
8. Close everything related to gconf-editor.
9. Switch to the profile you selected via the Terminal’s Edit menu, and (if you want) change it to the default profile in Edit -> “Profiles…”.

VIM
===

Create symlinks:

    ln -s ~/dotfiles/vim/vimrc ~/.vimrc
    ln -s ~/dotfiles/vim/gvimrc ~/.gvimrc
    ln -s ~/dotfiles/vim/autoload/pathogen/autoload/pathogen.vim ~/dotfiles/vim/autoload/pathogen.vim

I put Vim's backup and swap files in `~/tmp`, so that directory must exist.
Tobe sure, run: 

    mkdir ~/tmp

All plugins and scripts are stored in the `dotfiles/vim` directory.
My preferences for Vim are stored in `dotfiles/vim/vimrc` and `dotfiles/vim/gvimrc` respectively. 

Adding Plugin Bundles
---------------------

Plugins that are published on github can be installed as submodules.
For example, to install the [pyflakes-vim][pyflake], follow these steps:

    cd ~/dotfiles
    git submodule add https://github.com/kevinw/pyflakes-vim.git vim/bundle/pyflakes

This will update the `.gitmodules` file by appending something like:

    [submodule "vim/bundle/pyflakes"]
        path = vim/bundle/pyflakes
        url =  http://github.com/kevinw/pyflakes-vim.git

As well as checkout out the git repo into the `vim/bundle/pyflakes` directory.
You can then commit these changes as follows:

    git add .
    git ci -m "[ADD] pyflakes-vim submodule to pyflakes."


Bundles with prerequisites
--------------------------

pyflakes-vim

    sudo pip install pyflakes

easytags

    sudo apt-get install exuberant-ctags

coffeescript linux

    sudo apt-get install g++ curl libssl-dev apache2-utils
    git clone git://github.com/ry/node.git
    cd node
    ./configure
    make
    sudo make install
    cd
    curl http://npmjs.org/install.sh | sudo sh
    sudo  npm install -g coffee-script


WINDOWS GVIM
===

For windows, there need to be a few changes.
Install [gVim][gvim] then make the following changes:

    .vimrc -> _vimrc
    .gvimrc -> _gvimrc
    vim dir -> vimfiles
    
And make the symlinks using the [MDLINK][mklink] command.

CREDIT
===

This attempt at version controlling was powered by [vimcast.org][vco], [Syncronizing plugins with git submodules and pathogen][vcopost], [nelstrom dotfiles README][nel].

[vco]: http://vimcast.org
[vcopost]: http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/
[nel]: https://raw.github.com/nelstrom/dotfiles/master/README.markdown
[pyflake]: https://github.com/kevinw/pyflakes-vim
[gvim]: http://www.vim.org/download.php
[mklink]: http://technet.microsoft.com/en-us/library/cc753194(WS.10).aspxi 

