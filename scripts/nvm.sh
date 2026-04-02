echo
echo "Installing NVM..."

export NVM_DIR="$HOME/.nvm"
mkdir -p "$NVM_DIR"

if [ -s "$NVM_DIR/nvm.sh" ]; then
  echo "NVM already installed."
else
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
fi

# Load nvm for this session
\. "$NVM_DIR/nvm.sh"

echo "Installing latest LTS Node..."
nvm install --lts
