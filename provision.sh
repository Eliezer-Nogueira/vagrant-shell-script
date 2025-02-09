sudo apt update && sudo apt upgrade -y 
sudo apt install -y vim curl telnet unzip wget net-tools htop nmap

sudo useradd -m -s /bin/bash eliezer
sudo passwd -d eliezer #Permissão de Login sem senha (Não recomendado em ambientes de produção)