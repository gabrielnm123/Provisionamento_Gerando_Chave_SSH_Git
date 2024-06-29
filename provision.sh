#!/bin/bash

sudo apt update && sudo apt install -y curl ssh
clear
ssh-keygen -t ed25519
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
echo "Copie o texto abaixo para adiciona-lá na plataforma: "
echo
cat ~/.ssh/id_ed25519.pub
echo
