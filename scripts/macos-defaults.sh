echo
echo "Applying macOS defaults..."

# Dock
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock minimize-to-application -bool true
defaults write com.apple.dock show-recents -bool false
defaults write com.apple.dock tilesize -integer 33
defaults write com.apple.dock largesize -integer 128
defaults write com.apple.dock mru-spaces -bool false
defaults write com.apple.dock expose-group-apps -bool true

# Finder
defaults write com.apple.finder FXPreferredViewStyle -string "clmv"

# Keyboard
defaults write NSGlobalDomain KeyRepeat -integer 2
defaults write NSGlobalDomain InitialKeyRepeat -integer 25

# Restart affected apps
killall Dock
killall Finder

echo "macOS defaults applied."
