#!/bin/bash
curl -s https://raw.githubusercontent.com/NodesLLS/Node_tools/main/logo.sh | bash
# Check if Node.js is installed
if ! [ -x "$(command -v node)" ]; then
  # Install Node.js v18
  curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
  sudo apt-get install -y nodejs

  # Install Yarn
  curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add - 
  echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
  sudo apt-get update 
  sudo apt-get install yarn
else
  # Print Node.js version 
  red=$(tput setaf 1)
  bold=$(tput bold)
  normal=$(tput sgr0)

  echo "${bold}${red}Node Version :${normal}"
  node -v
fi