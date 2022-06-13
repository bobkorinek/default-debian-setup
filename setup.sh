#!/bin/sh

if [ -z "${SUDO+1}" ]; then
    SUDO='sudo'
fi

$SUDO apt update -y
$SUDO apt install -y vim git curl zsh python httpie

cp .vimrc ~/.vimrc

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo "export ZSH=\"$(eval echo ~$USER)\"/.oh-my-zsh" > ~/.zshrc \
    && cat .zshrc >> ~/.zshrc
chsh -s $(which zsh)

zsh
