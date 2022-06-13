#!/bin/sh

sudo apt update -y
sudo apt install -y vim \
    git \
    curl \
    http \
    zsh

cp .vimrc ~/.vimrc

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cp .zshrc ~/.zshrc
