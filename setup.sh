#!/bin/sh

sudo apt update -y
sudo apt install -y vim git curl zsh python httpie

cp .vimrc ~/.vimrc

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo "export ZSH=\"$(eval echo ~$USER)\"/.oh-my-zsh" > ~/.zshrc \
    && cat .zshrc >> ~/.zshrc
chsh -s $(which zsh)

zsh
