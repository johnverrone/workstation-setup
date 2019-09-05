#!/usr/bin/env zsh

# Fail if any errors occur
set -e

echo "Caching password..."
sudo -K
sudo true;
clear

MY_DIR="$(dirname "$0")"

# Setup Homebrew
source ${MY_DIR}/scripts/homebrew.sh

source ${MY_DIR}/scripts/git.sh

source ${MY_DIR}/scripts/prezto.sh
source ${MY_DIR}/scripts/vim.sh

source ${MY_DIR}/scripts/tmux.sh
source ${MY_DIR}/scripts/dotfiles.sh
source ${MY_DIR}/scripts/iterm-setup.sh
