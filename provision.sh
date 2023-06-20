sudo apt update && sudo apt install -y curl figlet ssh
clear
curl -O -J http://www.figlet.org/fonts/cyberlarge.flf > /dev/null 2>&1
echo "\e[32m$(figlet -c -f cyberlarge.flf "Chave SSH Git")\e[0m"
rm cyberlarge.flf
echo
echo -n "\e[33mEmail da sua conta GitHub: \e[0m"
read email
echo
ssh-keygen -t ed25519 -C $email
eval "$(ssh-agent -s)"
sudo ssh-add ~/.ssh/id_ed25519.pub 
echo
echo "\e[33mCopie o texto abaixo para adiciona-lá na plataforma:\e[0m"
echo
echo -e "\e[31m$(cat ~/.ssh/id_ed25519.pub)\e[0m"
echo
