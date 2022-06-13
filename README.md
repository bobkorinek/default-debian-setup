# Default Debian setup

This project is just for installing some of the basic tools for Debian-like OS.

## Installation

For installation just execute the command below.

```sh
git clone https://github.com/chriskorinek/default-debian-setup.git \
    && cd default-debian-setup \
    && chmod 500 ./setup.sh \
    && ./setup.sh \
    && cd .. \
    && rm -rf default-debian-setup
```

If you don't wish `sudo` to be used, execute the command below.

```sh
git clone https://github.com/chriskorinek/default-debian-setup.git \
    && cd default-debian-setup \
    && chmod 500 ./setup.sh \
    && SUDO='' ./setup.sh \
    && cd .. \
    && rm -rf default-debian-setup
```
