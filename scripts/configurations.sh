echo
echo "Configuring iTerm..."
cp files/com.googlecode.iterm2.plist ~/Library/Preferences

echo "Downloading patchable fonts..."
brew tap homebrew/cask-fonts
brew cask install font-hack-nerd-font
