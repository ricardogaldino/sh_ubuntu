#!/bin/sh

# Check the latest release and download url:
# https://data.services.jetbrains.com/products/releases?code=TBA&latest=true&type=release

# --------------------------------------------------

RELEASE="1.26.4.13374"
FILE_NAME="jetbrains-toolbox"

DIR_TARGET="/opt"
DIR_NAME="$FILE_NAME-$RELEASE"
DIR_PATH="$DIR_TARGET/$DIR_NAME"

ZIP_NAME="$DIR_NAME.tar.gz"
ZIP_DOWNLOAD="https://download.jetbrains.com/toolbox/$ZIP_NAME"
ZIP_PATH="$DIR_TARGET/$ZIP_NAME"

FILE_PATH="$DIR_PATH/$FILE_NAME"

# --------------------------------------------------

sudo apt update && sudo apt upgrade
sudo apt install libfuse2

# --------------------------------------------------

sudo rm -rf "$ZIP_PATH"
sudo rm -rf "$DIR_PATH"

sudo wget -c "$ZIP_DOWNLOAD" -P "$DIR_TARGET"
sudo tar -xzf "$ZIP_PATH" -C  "$DIR_TARGET"

sudo chmod +x "$FILE_PATH"
sudo "$FILE_PATH"
