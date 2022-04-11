cd $(dirname $0)

install_with_yes_no()
{
    PACKAGE_NAME=$1
    INSTALL_SCRIPT=$2
    read -p "Do you want to install $PACKAGE_NAME ? [y/n] " yn
    case $yn in 
        [Yy]* ) echo "Installing $PACKAGE_NAME"; sh $INSTALL_SCRIPT; break;;
        [Nn]* ) break;;
    esac
}

install_with_yes_no "Haskell and friends" "./install-haskell.sh"
install_with_yes_no "Homebrew" "./install-brew.sh"
install_with_yes_no "Neovim" "./install-neovim.sh"
install_with_yes_no "Vimplug" "./install-vim-plug.sh"
install_with_yes_no "Python3 Neovim support" "install-python.sh"
