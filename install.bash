#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Function to remove files and create symbolic links.
create_new_symlink () {
    if [ -f $2 ];
    then
        echo Removing file $2
        rm $2
    elif [ -h $2 ];
    then
        echo Removing symbolic link to $2
        rm $2
    fi
    ln -s --relative $1 $2
}
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Get the current dir of this script.
current_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
pushd $current_dir
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Install all needed software.
package_list=(
    curl
    ttf-inconsolata
)
sudo apt-get install ${package_list[@]}
sudo apt-get autoremove
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Symbolic link for bashrc.
create_new_symlink bashrc ~/.bashrc
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# git submodules. 
git submodule update --init --recursive
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Find all 'install.bash' files in submodules and call them.
install_scripts=$(find ./*/ -name install.bash)
for script in $install_scripts
do
    echo Executing $script
    bash $script
done
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
popd
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
