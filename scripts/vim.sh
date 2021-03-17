echo
echo "Installing neovim"
brew install neovim

echo "Install luan vim dependencies..."
brew install ripgrep
brew install fd

echo "Installing luan vim configuration..."
git clone https://github.com/luan/nvim ~/.config/nvim
