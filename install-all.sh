cd $(dirname $0)

echo "Installing Haskell and friends"
sh ./haskell.sh 

echo "Installing homebrew and its packages"
sh ./install-brew.sh

echo "Installing python3 tooling"
sh ./install-python.sh

echo "Installing Vim-plug"
sh ./install-vim-plug.sh
