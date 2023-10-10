#!/bin/bash
  curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
  sudo apt-get install -y nodejs 
  curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add - 
  echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
  sudo apt-get update 
  sudo apt-get install yarn -y
  red=$(tput setaf 1)
  bold=$(tput bold)
  normal=$(tput sgr0)

  echo "${bold}${red}Node Version :${normal}"
  node -v
