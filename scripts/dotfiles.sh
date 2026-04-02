echo
echo "Configuring johnverrone/dotfiles"

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

if [ ! -d "$HOME/.cfg" ]
then
  touch $HOME/.gitignore
  echo ".cfg" >> $HOME/.gitignore
  git clone --bare https://github.com/johnverrone/dotfiles.git $HOME/.cfg

  # Back up any existing files that would conflict with checkout
  config checkout 2>&1 | grep "^\t" | awk '{print $1}' | while read -r file; do
    mkdir -p "$HOME/.dotfiles-backup/$(dirname "$file")"
    mv "$HOME/$file" "$HOME/.dotfiles-backup/$file"
    echo "Backed up $file to ~/.dotfiles-backup/$file"
  done

  config checkout
else
  config pull
fi

config config --local status.showUntrackedFiles no
