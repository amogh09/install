# Haskell and friends installation for Mac

if ! command -v ghcup &> /dev/null
then
    echo "ghcup could not be found. Installing it."
    curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh
else
    echo "ghcup is already installed."
fi

cabal install ormolu # Installs ormolu for formatting
