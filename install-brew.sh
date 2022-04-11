# Homebrew installation and its packages
xcode-select --install

if ! command -v brew &> /dev/null
then
    echo "brew could not be found. Installing it."
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    echo "brew is already installed."
fi

