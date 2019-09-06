echo
echo "Configuring johnverrone/dotfiles"

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

if [ ! -d "$HOME/.cfg" ]
then
  touch $HOME/.gitignore
  echo ".cfg" >> $HOME/.gitignore
  git clone --bare https://github.com/johnverrone/dotfiles.git $HOME/.cfg
  config checkout
else
  config pull
fi

config config --local status.showUntrackedFiles no
