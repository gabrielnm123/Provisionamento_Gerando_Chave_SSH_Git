sudo apt update && sudo apt install -y curl ssh
clear
echo "Chave SSH Git"
echo
echo -n "mEmail da sua conta GitHub: "
read email
echo
ssh-keygen -t ed25519 -C $email
eval "$(ssh-agent -s)"
sudo ssh-add ~/.ssh/id_ed25519.pub 
echo
echo "Copie o texto abaixo para adiciona-lá na plataforma: "
echo
echo -e $(cat ~/.ssh/id_ed25519.pub)
echo
