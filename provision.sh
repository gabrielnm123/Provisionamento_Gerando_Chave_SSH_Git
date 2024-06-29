#!/bin/bash

# Variável para o e-mail do GitHub
read -p "Digite seu e-mail do GitHub: " email

# Gerar uma nova chave SSH
ssh-keygen -t ed25519 -C "$email"

# Iniciar o agente SSH
eval "$(ssh-agent -s)"

# Adicionar a chave privada gerada ao agente SSH
ssh-add ~/.ssh/id_ed25519

# Exibir a chave pública gerada para facilitar a adição ao GitHub
echo "Sua chave SSH pública é:"
cat ~/.ssh/id_ed25519.pub

echo "Copie a chave acima e adicione ao seu GitHub em https://github.com/settings/keys"
