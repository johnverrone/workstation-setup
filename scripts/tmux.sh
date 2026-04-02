echo
echo "Installing TPM (Tmux Plugin Manager)..."

if [ ! -d "$HOME/.tmux/plugins/tpm" ]; then
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
  echo "TPM installed. Run prefix + I inside tmux to install plugins."
else
  echo "TPM already installed."
fi
