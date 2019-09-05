echo
echo "Configuring johnverrone/dotfiles"

touch $HOME/.gitignore
echo ".cfg" >> $HOME/.gitignore
git clone --bare https://github.com/johnverrone/dotfiles.git $HOME/.cfg
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config checkout

config config --local status.showUntrackedFiles no
