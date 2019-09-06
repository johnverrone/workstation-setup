#!/usr/bin/env zsh

# Fail if any errors occur
set -e

echo "Caching password..."
sudo -K
sudo true;
clear

MY_DIR="$(dirname "$0")"

# Setup Homebrew and Git for rest of scripts
source ${MY_DIR}/scripts/homebrew.sh
source ${MY_DIR}/scripts/git.sh

# Configure shell (zprezto, vim, tmux)
source ${MY_DIR}/scripts/zsh.sh
source ${MY_DIR}/scripts/vim.sh
source ${MY_DIR}/scripts/tmux.sh

echo "Setting zsh as default shell..."
chsh -s /bin/zsh

# Install common applications
source ${MY_DIR}/scripts/applications-common.sh

# Configure applications
source ${MY_DIR}/scripts/configurations.sh

# Finally, pull custom dotfiles
source ${MY_DIR}/scripts/dotfiles.sh
