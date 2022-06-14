#!/bin/sh

ZIP_FILE="default-debian-setup.zip"
ZIP_FOLDER="default-debian-setup-master"

wget -O "$ZIP_FILE" https://github.com/chriskorinek/default-debian-setup/archive/refs/heads/master.zip
unzip "$ZIP_FILE"

cd "$ZIP_FOLDER"
chmod +x setup.sh
./setup.sh

cd ..
rm -rf "$ZIP_FOLDER"
