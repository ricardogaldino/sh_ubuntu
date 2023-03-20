#!/bin/sh

# --------------------------------------------------

sudo apt-get update && apt-get upgrade

# --------------------------------------------------

sudo apt-get remove nodejs
sudo apt-get remove npm
sudo rm -rf ~/.nvm
sudo rm -rf ~/.npm
sudo rm -rf ~/.bower

# --------------------------------------------------

sudo apt install build-essential -y
source ~/.bashrc

sudo curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.2/install.sh | bash

# --------------------------------------------------

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# --------------------------------------------------