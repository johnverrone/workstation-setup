echo
echo "Checking for Xcode Command Line Tools..."

if xcode-select -p &>/dev/null; then
  echo "Xcode CLT already installed."
else
  echo "Installing Xcode Command Line Tools..."
  xcode-select --install
  echo "Waiting for Xcode CLT installation to complete..."
  until xcode-select -p &>/dev/null; do
    sleep 5
  done
  echo "Xcode CLT installed."
fi
