Installation

    git clone git://github.com/nathanrosspowell/dotfiles.git

Where possible, Vim plugins are installed as git submodules. Check these out by running the commands:

    cd dotfiles
    git submodule init
    git submodule update

BASH
===

Create symlink:

    ln -s ~/dotfiles/bashrc ~/.bashrc

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
For example, to install the [JavaScript bundle][jsbun], follow these steps:

    cd ~/dotfiles
    git submodule add http://github.com/pangloss/vim-javascript.git vim/bundle/vim-javascript

This will update the `.gitmodules` file by appending something like:

    [submodule "vim/bundle/vim-javascript"]
        path = vim/bundle/vim-javascript
        url = http://github.com/pangloss/vim-javascript.git
    
As well as checkout out the git repo into the `vim/bundle/vim-javascript` directory.
You can then commit these changes as follows:

    git add .
    git ci -m "Added the javascript bundle"


CREDIT
===

This attempt at version controlling was powered by [vimcast.org][vco].
[Syncronizing plugins with git submodules and pathogen][vcopost]http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/]
[nelstrom dotfiles README][nel]https://raw.github.com/nelstrom/dotfiles/master/README.markdown

[vco]: http://vimcast.org
[vcopost]: http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/
[nel]: https://raw.github.com/nelstrom/dotfiles/master/README.markdown


