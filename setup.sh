#!/bin/sh

PACKAGES="$PACKAGES vim git curl zsh httpie python3 mandoc"

if [ -z "${SUDO+1}" ]; then
    if command -v sudo >/dev/null 2>&1; then
        SUDO="sudo"
    else
        SUDO=""
    fi
fi

if [ -z "${PKG+1}" ]; then
    # For alpine distros
    if command -v apk >/dev/null 2>&1; then
        PKG="apk"
    else
        PKG="apt-get"
    fi
fi

if [ "${PKG}" = "apk" ]; then
    $SUDO apk update
    $SUDO apk add $PACKAGES
elif [ "${PKG}" = "apt-get" ]; then
    $SUDO apt-get update
    $SUDO apt-get install -y $PACKAGES
else
    echo "Unknown package manager"
    exit 1
fi

cp .vimrc ~/.vimrc

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo "export ZSH=\"$(eval echo ~$USER)\"/.oh-my-zsh" > ~/.zshrc \
    && cat .zshrc >> ~/.zshrc

if command -v chsh >/dev/null 2>&1; then
    chsh -s $(which zsh)
fi

zsh
