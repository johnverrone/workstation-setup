echo
echo "Installing neovim"
brew install neovim

echo "Installing luan vim configuration..."
[ ! -d "${HOME}/.vim" ] && curl vimfiles.luan.sh/install | FORCE=1 bash

echo "Updating luan vim configuration..."
vim-update
