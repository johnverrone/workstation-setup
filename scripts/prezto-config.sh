echo
echo "Configuring prezto"

git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto" || true

echo "setting zsh as default shell"
chsh -s /bin/zsh

echo "configuring prezto-contrib"

git clone https://github.com/belak/prezto-contrib ~/.zprezto/contrib
cd ~/.zprezto/contrib
git submodule init
git submodule update
cd ~/dev/workstation-setup
