#! /bin/bash
sudo apt update

PYENV_PYTHON_VERSION=3.8.2

bash programs.sh

ls -sf "$(pwd)/.zlogin" ~/.zlogin


