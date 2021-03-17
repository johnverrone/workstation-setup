# Applications are independent, so if one fails don't stop.
set +e

echo
echo "Installing applications"

# Utilities

brew install --cask spectacle
brew install --cask postman
brew install jq

# Terminals

brew install --cask iterm2

# Browsers

brew install --cask google-chrome

# Communication

brew install --cask slack

# Text Editors

# brew install --cask macdown
# brew install --cask sublime-text
# brew install --cask visual-studio-code

# Development

brew install --cask docker
echo "To get docker command-line tools, run the docker application"
brew install tmux

brew install go

# Node (via nvm)
mkdir -p $HOME/.nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash
nvm install node


set -e
