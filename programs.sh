#! /bin/bash 
sudo apt install -y \
    zsh git wget curl byobu htop neovim\
    make build-essential libssl-dev zlib1g-dev libbz2-dev\
    libreadline-dev libsqlite3-dev llvm libncurses5-dev\
    libncursesw5-dev xz-utils tk-dev libffi-dev mysql-client\
    mysql-server

curl -fsSL https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh
chsh -s `which zsh`
zsh

ln -sf "$(pwd)/.zshenv" ~/.zshenv

git clone https://github.com/pyenv/pyenv.git ~/.pyenv

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

pyenv install $PYENV_PYTHON_VERSION
pyenv global $PYENV_PYTHON_VERSION

sudo apt install -y \
    "python${PYENV_PYTHON_VERSION: 0:1}-env" \
    "python${PYENV_PYTHON_VERSION: 0:3}-env" \
    "python${PYENV_PYTHON_VERSION: 0:1}-dev" \
    "python${PYENV_PYTHON_VERSION: 0:3}-dev" \

mkdir -p ~/.config/nvim
ln -sf "$(pwd)/nvim" ~/.config/nvim
ln -sf "$(pwd)/nvim/.vimrc" ~/.vimrc

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.neovim

