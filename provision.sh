#!/bin/bash

# Parte que precisa de sudo
sudo bash -c '
apt update && apt install -y curl ssh
clear
'

# Parte que precisa de interação do usuário
clear
echo "Chave SSH Git"
echo
echo -n "Email da sua conta GitHub: "
read email
echo
ssh-keygen -t ed25519 -C "$email"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
echo
echo "Copie o texto abaixo para adiciona-lá na plataforma: "
echo
cat ~/.ssh/id_ed25519.pub
echo
