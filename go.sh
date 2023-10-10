#!/bin/bash
version=${VER:-"1.20.5"}

curl -L -# -O "https://golang.org/dl/go$version.linux-amd64.tar.gz"
sudo rm -rf /usr/local/go
sudo tar -C /usr/local -xzf "go$version.linux-amd64.tar.gz"
rm "go$version.linux-amd64.tar.gz"

touch $HOME/.bash_profile
source $HOME/.bash_profile
PATH_INCLUDES_GO=$(grep "$HOME/go/bin" $HOME/.bash_profile)
if [ -z "$PATH_INCLUDES_GO" ]; then
  echo "export PATH=$PATH:/usr/local/go/bin:$HOME/go/bin" >> $HOME/.bash_profile
  echo "export GOPATH=$HOME/go" >> $HOME/.bash_profile
fi
  # Print Node.js version 
  red=$(tput setaf 1)
  bold=$(tput bold)
  normal=$(tput sgr0)

  echo "${bold}${red}Golang Version :${normal}"
  go version 
source .bash_profile
