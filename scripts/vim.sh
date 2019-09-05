echo
echo "Installing neovim"
brew install neovim

echo "Installing luan vim configuration..."
curl vimfiles.luan.sh/install | bash

brew uninstall ctags
brew install --HEAD universal-ctags/universal-ctags/universal-ctags

echo "Updating luan vim configuration..."
vim-update
