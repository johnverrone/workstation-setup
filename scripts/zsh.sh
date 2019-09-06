echo
echo "Installing prezto"

git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto" || true

echo "Updating zprezto..."
cd ${ZDOTDIR:-$HOME}/.zprezto
git pull
git submodule update --init --recursive
cd -
