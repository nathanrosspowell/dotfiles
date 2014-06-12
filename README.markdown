dotfiles
============

Installation
------------

First navigate to a folder you like, then execute the following in a command prompt:

    git clone git://github.com/nathanrosspowell/dotfiles.git
    pushd dotfiles
    bash install.bash
    

Then script `install.bash` will use package managers to:
* get all of the needed software
* set up the symlink `.bashrc`
* initalise all of the submodules
* run the `install.bash` script inside of any submodules


Submodules
----------

I'm experimenting with hosting groups of dotfiles in their own git reposiroties.
The idea is that I can use them idividually if needed e.g. on a raspberry pi I might not want to install all of the dotfile configuration.

## Current submodiles

* [vim](https://github.com/nathanrosspowell/vim) 



Windows gvim
------------

For windows, there need to be a few changes.
Install [gVim](http://www.vim.org/download.php) then make the following changes:

    .vimrc -> _vimrc
    .gvimrc -> _gvimrc
    vim dir -> vimfiles
    
And make the symlinks using the [MDLINK](http://technet.microsoft.com/en-us/library/cc753194(WS.10).aspxi) command.
