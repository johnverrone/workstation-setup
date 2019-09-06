# Applications are independent, so if one fails don't stop.
set +e

echo
echo "Installing applications"

# Utilities

brew cask install spectacle
brew cask install postman
brew install jq

# Terminals

brew cask install iterm2

# Browsers

brew cask install google-chrome

# Communication

brew cask install slack

# Text Editors

brew cask install macdown
brew cask install sublime-text
brew cask install visual-studio-code

# Development

brew cask install docker
echo "To get docker command-line tools, run the docker application"

brew install go
brew cask install java

# Node (via nvm)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
nvm install node


set -e
