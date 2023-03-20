#!/bin/sh

# --------------------------------------------------

sudo apt-get update && apt-get upgrade

# --------------------------------------------------

nvm install node
npm install -g npm

# --------------------------------------------------

nvm --version
node -v
npm -v
