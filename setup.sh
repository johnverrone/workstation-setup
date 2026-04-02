#!/usr/bin/env zsh

# Fail if any errors occur
set -e

echo "Caching password..."
sudo -K
sudo true;
clear

MY_DIR="$(dirname "$0")"

# Ensure Xcode Command Line Tools are installed (provides git, clang, etc.)
source ${MY_DIR}/scripts/xcode-clt.sh

# Setup Homebrew
source ${MY_DIR}/scripts/homebrew.sh

# Pull custom dotfiles (before brew bundle, since Brewfile lives in $HOME)
source ${MY_DIR}/scripts/dotfiles.sh

# Install everything from Brewfile
source ${MY_DIR}/scripts/brew-bundle.sh

# Install NVM and Node
source ${MY_DIR}/scripts/nvm.sh

# Configure shell (zprezto, tmux)
source ${MY_DIR}/scripts/zsh.sh
source ${MY_DIR}/scripts/tmux.sh

# Configure git (user info — aliases come from dotfiles)
source ${MY_DIR}/scripts/git.sh

# Apply macOS preferences
source ${MY_DIR}/scripts/macos-defaults.sh

echo
echo "Done! Some changes require a logout/restart to take effect."
