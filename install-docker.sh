#!/bin/sh

echo "==> Remove old version of docker"
apt-get remove docker docker-engine docker.io containerd runc

echo "==> Install certs and dependency"
apt-get update
apt-get install ca-certificates curl gnupg lsb-release

echo "==> Add gpg keys"
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

echo "==> Install Docker"
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin

echo "==> Done"