#!/bin/bash
curl -s https://raw.githubusercontent.com/NodesLLS/Node_tools/main/logo.sh | bash
#Install Docker condition
if ! command -v docker >/dev/null 2>&1; then

  echo "Docker not installed - start install"
  
  sudo apt-get update -y
  sudo apt-get install ca-certificates curl gnupg lsb-release -y
  sudo install -m 0755 -d /etc/apt/keyrings
  curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
  sudo chmod a+r /etc/apt/keyrings/docker.gpg
  echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
  sudo apt-get update -y
  sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y
  
else

  echo "Docker installed, version:"
  docker --version

fi

echo "### Test Docker ###"
sudo docker run hello-world
