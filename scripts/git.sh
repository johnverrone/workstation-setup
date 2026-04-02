echo
echo "Configuring Git user (aliases and settings come from dotfiles ~/.gitconfig_base)..."

read "git_name?Enter your full name for git: "
read "git_email?Enter your email for git: "

git config --global user.name "$git_name"
git config --global user.email "$git_email"
